//
//  NotificationsPanelController.m
//  MacAppPlayground
//
//  Created by Jakub Suder on 08.02.2013.
//  Copyright (c) 2013 Jakub Suder. All rights reserved.
//

#import "NotificationsPanelController.h"

@implementation NotificationsPanelController

- (void) awakeFromNib {
  [[NSUserNotificationCenter defaultUserNotificationCenter] setDelegate: self];
}

- (BOOL) userNotificationCenter: (NSUserNotificationCenter *) center
      shouldPresentNotification: (NSUserNotification *) notification {
  return YES;
}

- (void) userNotificationCenter: (NSUserNotificationCenter *) center
        didActivateNotification: (NSUserNotification *) notification {

  NSString *target = (notification.activationType == NSUserNotificationActivationTypeContentsClicked) ?
    @"contents" : @"action button";

  NSAlert *alert = [NSAlert alertWithMessageText: @"User clicked a notification"
                                   defaultButton: @"OK"
                                 alternateButton: nil
                                     otherButton: nil
                       informativeTextWithFormat: @"text = \"%@\", %@ clicked", notification.informativeText, target];

  [alert beginSheetModalForWindow: self.window modalDelegate: nil didEndSelector: nil contextInfo: nil];

  [center removeDeliveredNotification: notification];
}

- (IBAction) sendClicked: (id) sender {
  NSUserNotification *notification = [[NSUserNotification alloc] init];

  [notification setTitle: self.titleField.stringValue];
  [notification setSubtitle: self.subtitleField.stringValue];
  [notification setInformativeText: self.bodyField.stringValue];

  // NOTE: this setting has no effect until you switch "alert style" from "banners" to "alerts"
  //       in the MacAppPlayground application entry in System Preferences!

  if (self.hasButtonsSelected) {
    [notification setHasActionButton: YES];
    [notification setActionButtonTitle: self.actionButtonField.stringValue];
    [notification setOtherButtonTitle: self.otherButtonField.stringValue];
  }

  [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification: notification];
}

@end
