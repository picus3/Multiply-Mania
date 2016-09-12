//
//  Name.m
//  Muiltiplication App
//
//  Created by Sam Picus on 12/29/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//
#import "Muiltiplication_AppAppDelegate.h"
#import "Name.h"
#import "Muilti.h"

@implementation Name
@synthesize stats;
@synthesize thing;
@synthesize person;
@synthesize namedude;
/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
-(IBAction)enter {
	Muiltiplication_AppAppDelegate *delegate= (Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
	
	namedude = person.text;
	
	if ([person.text length]== 0) {
		[person becomeFirstResponder];
	}
	else {
		
	

	[thing dissmis:namedude];
	[delegate record];
	}
}
- (void)viewDidLoad {
	

	NSString *stats2 = [thing stats];
	stats.text = stats2;
	[super viewDidLoad];
}
-(void)start {
	NSString *stats2 = [thing stats];
	stats.text = stats2;
	
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return YES;
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
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
	[person release];
	[stats release];
	[thing release];
	[namedude release];
    [super dealloc];
}
-(BOOL)textFieldShouldReturn: (UITextField *)theTextField {
	Muiltiplication_AppAppDelegate *delegate= (Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
	[theTextField resignFirstResponder];
	namedude = theTextField.text;
	[thing dissmis:namedude];
	[delegate record];
	
	return YES;
}

@end
