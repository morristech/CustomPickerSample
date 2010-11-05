//
//  CustomPickerSampleViewController.m
//  CustomPickerSample
//
//  Created by maicki on 03.11.10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "CustomPickerSampleViewController.h"

@implementation CustomPickerSampleViewController


-(IBAction)showButton:(id)sender {
	pickerViewPopup = [[UIActionSheet alloc] initWithTitle:@"How many?"
												  delegate:self
										 cancelButtonTitle:nil
									destructiveButtonTitle:nil
										 otherButtonTitles:nil];
	
	// Add the picker
	pickerView = [[UIDatePicker alloc] initWithFrame:CGRectMake(0,44,0,0)];
	
	//pickerView.delegate = self;
	//pickerView.showsSelectionIndicator = YES;    // note this is default to NO
	pickerView.hidden = NO;
	
	pickerToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
	pickerToolbar.barStyle = UIBarStyleBlackOpaque;
	[pickerToolbar sizeToFit];
	
	NSMutableArray *barItems = [[NSMutableArray alloc] init];
	
	UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
	[barItems addObject:flexSpace];
	
	UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(closePicker:)];
	[barItems addObject:doneBtn];
	
	[pickerToolbar setItems:barItems animated:YES];
	
	[pickerViewPopup addSubview:pickerToolbar];
	[pickerViewPopup addSubview:pickerView];
	[pickerViewPopup showInView:self.view];
	[pickerViewPopup setBounds:CGRectMake(0,0,320, 464)];	
}	


-(BOOL)closePicker:(id)sender
{
	[pickerViewPopup dismissWithClickedButtonIndex:0 animated:YES];
	NSLog(@"%@", pickerView.date);
	[pickerView release];
	[pickerToolbar release];
	[pickerViewPopup release];
	return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
