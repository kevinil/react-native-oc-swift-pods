//
//  ReactView.m
//  KevinRN
//
//  Created by 刘剑文 on 16/3/17.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "ReactView.h"
#import "RCTRootView.h"

@implementation ReactView

- (void)awakeFromNib {
  NSString *urlString = @"http://localhost:8081/index.ios.bundle";
  NSURL *jsCodeLocation = [NSURL URLWithString:urlString];
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation moduleName:@"KevinRN" initialProperties:nil launchOptions:nil];
  [self addSubview:rootView];
  rootView.frame = self.bounds;
}

@end
