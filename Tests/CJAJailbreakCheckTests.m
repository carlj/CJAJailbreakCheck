//
//  CJAJailbreakCheckTests.m
//  CJAJailbreakCheckTests
//
//  Created by Carl Jahn on 11.10.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIDevice+Jailbreak.h"

@interface CJAJailbreakCheckTests : XCTestCase

@end

@implementation CJAJailbreakCheckTests


- (void)testExample {

  BOOL result = [UIDevice currentDevice].isJailbreaked;
  XCTAssertFalse(result, @"isJailbreaked should always fail on non app store build (eg. Adhoc, release or debug builds)");
}

@end
