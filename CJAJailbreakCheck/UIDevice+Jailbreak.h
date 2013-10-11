//
//  UIDevice+Jailbreak.h
//  Jailbreak
//
//  Created by Carl Jahn on 10.10.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (Jailbreak)

@property (nonatomic, assign, readonly, getter = isJailbreaked) BOOL jailbreaked;

@end
