//
//  AppDelegate.h
//  MacAppPlayground
//
//  Created by Jakub Suder on 08.02.2013.
//  Copyright (c) 2013 Jakub Suder. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "NotificationsPanelController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NotificationsPanelController *notificationsPanelController;

@end
