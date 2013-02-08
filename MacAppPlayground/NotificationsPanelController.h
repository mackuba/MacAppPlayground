//
//  NotificationsPanelController.h
//  MacAppPlayground
//
//  Created by Jakub Suder on 08.02.2013.
//  Copyright (c) 2013 Jakub Suder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NotificationsPanelController : NSObject <NSUserNotificationCenterDelegate>

@property (weak) IBOutlet NSTextField *titleField;
@property (weak) IBOutlet NSTextField *subtitleField;
@property (weak) IBOutlet NSTextField *bodyField;
@property (weak) IBOutlet NSTextField *actionButtonField;
@property (weak) IBOutlet NSTextField *otherButtonField;
@property (weak) IBOutlet NSWindow *window;
@property BOOL hasButtonsSelected;

- (IBAction) sendClicked: (id) sender;

@end
