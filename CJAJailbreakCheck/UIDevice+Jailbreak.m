//
//  UIDevice+Jailbreak.m
//  Jailbreak
//
//  Created by Carl Jahn on 10.10.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "UIDevice+Jailbreak.h"


@implementation UIDevice (Jailbreak)

- (BOOL)isJailbreaked {
  
  static dispatch_once_t onceToken;
  static BOOL jailbreakResult;
  dispatch_once(&onceToken, ^{
    
    jailbreakResult = NO;
    
    NSArray *jailbrokenPaths = @[
#if !(TARGET_IPHONE_SIMULATOR)
                                 @"/usr/sbin/sshd",
                                 @"/usr/libexec/sftp-server",
                                 @"/usr/bin/sshd",
#endif
                                 @"/Applications/Cydia.app",
                                 @"/Applications/RockApp.app",
                                 @"/Applications/Icy.app",
                                 @"/Applications/WinterBoard.app",
                                 @"/Applications/SBSettings.app",
                                 @"/Applications/MxTube.app",
                                 @"/Applications/IntelliScreen.app",
                                 @"/Applications/FakeCarrier.app",
                                 @"/Applications/blackra1n.app",
                                 
                                 @"/Library/MobileSubstrate/DynamicLibraries/Veency.plist",
                                 @"/Library/MobileSubstrate/DynamicLibraries/LiveClock.plist",
                                 
                                 @"/System/Library/LaunchDaemons/com.ikey.bbot.plist",
                                 @"/System/Library/LaunchDaemons/com.saurik.Cydia.Startup.plist",
                                 
                                 @"/private/var/lib/apt",
                                 @"/private/var/stash",
                                 @"/private/var/mobile/Library/SBSettings/Themes",
                                 @"/private/var/tmp/cydia.log",
                                 @"/private/var/lib/cydia"
                                ];
    
    NSFileManager *defaultManager = [NSFileManager defaultManager];
    for (NSString *path in jailbrokenPaths) {
      
      jailbreakResult = [defaultManager fileExistsAtPath: path];
      if (jailbreakResult) {
        
        break;
      }
    }
    
  });
  
  return jailbreakResult;
}

@end
