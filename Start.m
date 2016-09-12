//
//  Start.m
//  Muiltiplication App
//
//  Created by Sam Picus on 11/28/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "Start.h"
#import "Muiltiplication_AppAppDelegate.h"
#import "Choose.h"




@implementation Start
@synthesize chooseviewcontroller;
@synthesize bob;
@synthesize savedinfo2;
@synthesize practice;
@synthesize startnumofquestions;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/


-(BOOL)shouldAutorotate
{
	return(YES);
}
-(void)fun {
	Muiltiplication_AppAppDelegate *thing =(Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
	self.bob = chooseviewcontroller.numberstobeused1;
	self.practice = chooseviewcontroller.practice;
	[self	dismissModalViewControllerAnimated:NO];
	[thing Flip:4:YES];
	
	
	
}
-(void)state {
    state = 1;
}
-(void)statetobereturned:(NSArray *)buttoninfo {

	[self presentModalViewController:chooseviewcontroller animated:YES];
	[chooseviewcontroller clearnumbers];
	state = 2;
	[chooseviewcontroller returnstate:buttoninfo];
		
		
	
}
-(void)rate {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Like This App" message:@"Please Rate It" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Rate It",nil];
	[alert show];
	[alert release];
	
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
		if (buttonIndex == 1) {
			NSURL *bobbbbbby = [NSURL URLWithString:@"http://itunes.apple.com/us/app/multiply-mania/id418209646?mt=8"];
			[[UIApplication sharedApplication] openURL:bobbbbbby];
		}
	
}
-(IBAction)rateit {
    NSURL *bobbbbbby = [NSURL URLWithString:@"http://itunes.apple.com/us/app/multiply-mania/id418209646?mt=8"];
    [[UIApplication sharedApplication] openURL:bobbbbbby];
}
-(void)save{
	if (state == 2) {
		int num = 0;
		savedinfo2 = [NSMutableArray arrayWithCapacity:21];
		while (num != 20) {
			if ([[chooseviewcontroller.buttonarray objectAtIndex:num] backgroundColor] != nil) {
				
				NSNumber *numberobject = [NSNumber numberWithInt:num];
				[savedinfo2 addObject:numberobject];
			}
			num = num + 1;
		}
		
		if ([[chooseviewcontroller.buttonarray objectAtIndex:22] backgroundColor] == nil) {
			if ([[chooseviewcontroller.buttonarray objectAtIndex:20] backgroundColor] != nil) {
				NSNumber *numberobject = [NSNumber numberWithInt:121];
				[savedinfo2 addObject:numberobject];
				
			}
			else {
				NSNumber *numberobject = [NSNumber numberWithInt:1221];
				[savedinfo2 addObject:numberobject];
			}
			
		}
		
		else {
			NSNumber *numberobject = [NSNumber numberWithInt:100];
			[savedinfo2 addObject:numberobject];
		}
		NSValue *numofthenumeofquestions = [NSNumber numberWithInt:chooseviewcontroller.num6];
		[savedinfo2 addObject:numofthenumeofquestions];
	}
}
- (IBAction)Easy {
	[self presentModalViewController:chooseviewcontroller animated:YES];
	[chooseviewcontroller clearnumbers];
	state = 2;
	
	
}

- (IBAction)Hard2 {
	Muiltiplication_AppAppDelegate *thing =(Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
	[thing Flip:1:YES];
    
}

- (IBAction)Hard {
	Muiltiplication_AppAppDelegate *thing =(Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
	[thing Flip:3:YES];
    
}

- (IBAction)Medium {
	Muiltiplication_AppAppDelegate *thing =(Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
	[thing Flip:2:YES];
}

- (void)viewDidLoad {
	if ([self shouldAutorotateToInterfaceOrientation:UIInterfaceOrientationLandscapeRight ]);
	state = 1;
	[super viewDidLoad];
}
	
	
	

-(IBAction)highscore {
	Muiltiplication_AppAppDelegate *delegate= (Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
	[delegate record];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
	[bob release];
	[chooseviewcontroller release];
	[savedinfo2 release];
    [super dealloc];
}


@end
