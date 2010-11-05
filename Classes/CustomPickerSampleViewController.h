//
//  CustomPickerSampleViewController.h
//  CustomPickerSample
//
//  Created by maicki on 03.11.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomPickerSampleViewController : UIViewController<UIActionSheetDelegate> {
	UIDatePicker *pickerView;
	UIToolbar *pickerToolbar;
	UIActionSheet *pickerViewPopup;
}
-(IBAction)showButton:(id)sender;
-(BOOL)closePicker:(id)sender;

@end

