//
//  CustomPickerSampleAppDelegate.h
//  CustomPickerSample
//
//  Created by maicki on 03.11.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomPickerSampleViewController;

@interface CustomPickerSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CustomPickerSampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CustomPickerSampleViewController *viewController;

@end

