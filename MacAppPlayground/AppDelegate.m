//
//  AppDelegate.m
//  MacAppPlayground
//
//  Created by Jakub Suder on 08.02.2013.
//  Copyright (c) 2013 Jakub Suder. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void) applicationDidFinishLaunching: (NSNotification *) notification {
  NSUserNotification *clickedNotification = notification.userInfo[NSApplicationLaunchUserNotificationKey];
  if (clickedNotification) {
    [self.notificationsPanelController userNotificationCenter: [NSUserNotificationCenter defaultUserNotificationCenter]
                                      didActivateNotification: clickedNotification];
  }
}

@end
