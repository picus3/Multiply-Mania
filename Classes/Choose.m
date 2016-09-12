//
//  Choose.m
//  Muiltiplication App
//
//  Created by Sam Picus on 1/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Choose.h"
#import "Start.h"
#import "Muilti.h"


@implementation Choose
@synthesize nums;
@synthesize numberstobeused1;
@synthesize practice;
@synthesize buttonarray;
@synthesize num6;

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return(interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}
// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


- (void)viewDidLoad {
	if ([self shouldAutorotateToInterfaceOrientation:UIInterfaceOrientationLandscapeRight ]);
	self.buttonarray = [NSArray arrayWithObjects:one, two, three, four, five, six, seven, ight, nine, ten, eleven, twelve, thirteen, fourteen,fifteen,sixteen, seventeen,eighteen,ninetteen,twenty,oneandtw, twandtwenty, allsecond, nil];
	numofquestions.maximumValue = 100;
	numofquestions.minimumValue = 5;
	self.nums = [NSMutableDictionary dictionaryWithCapacity:20];
	self.numberstobeused1 = [NSMutableArray arrayWithCapacity:20];
	numofquestions.value = 30;
	color = [UIColor blueColor];
	[oneandtw setBackgroundColor:color];
	[self clearnumbers];
	
	
	[super viewDidLoad];
}
-(void)clearnumbers {
	self.numberstobeused1 = [NSMutableArray arrayWithCapacity:20];
	int buttons = 0;
	while (buttons != 21) {
		[[buttonarray objectAtIndex:buttons] setBackgroundColor:nil];
		buttons = buttons +1;
	}
	[allnumbers setBackgroundColor:nil];
	[twandtwenty setBackgroundColor:nil];
	[allsecond setBackgroundColor:nil];
	[oneandtw setBackgroundColor:color];
	practice = 1;
}
-(IBAction)start {
	if ([numberstobeused1 count] == 0) {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Numbers Selcted" message:@"Please Select a number to work on."delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[alert show];
		[alert release];
		
	}
	else {
		startviewcontroller.startnumofquestions = numofquestions.value;
	[startviewcontroller fun];
	}
	
	
}
-(void)returnstate:(NSArray *)buttoninfo{
	int numofbuttons = [buttoninfo count];
	numofbuttons = numofbuttons - 2; // for the extra number of the 2nd number buttons
	while (numofbuttons != 0) {
		numofbuttons = numofbuttons -1;
		int num = [[buttoninfo objectAtIndex:numofbuttons] intValue];
		[[buttonarray objectAtIndex:num] setBackgroundColor:color];
		num = num + 1;
		object = [NSNumber numberWithInt:num];
		[numberstobeused1 addObject:object];
	}
	numofbuttons = [buttoninfo count];
	numofbuttons = numofbuttons -2;
	int num = [[buttoninfo objectAtIndex:numofbuttons] intValue];
	if (num == 1221) {
		twandtwenty.backgroundColor = color;
		practice = 2;
	}
	if (num == 121) {
		oneandtw.backgroundColor = color;
		practice = 1;
	
	}
	if (num == 100) {
		allsecond.backgroundColor = color;
		practice = 3;
		oneandtw.backgroundColor = color;
		twandtwenty.backgroundColor = color;
	}
	numofquestions.value = [[buttoninfo objectAtIndex:numofbuttons + 1] intValue];
	num6	= numofquestions.value;
	NSString *numofit = [NSString stringWithFormat:@"%d Questions", num6];
	numofqueslabel.text = numofit;
}

-(IBAction)allnumbers {
	[allnumbers setBackgroundColor:color];
	int buttons = 0;
	self.numberstobeused1 = [NSMutableArray arrayWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:2],[NSNumber numberWithInt:3],[NSNumber numberWithInt:4],[NSNumber numberWithInt:5],[NSNumber numberWithInt:6],[NSNumber numberWithInt:7],[NSNumber numberWithInt:8],[NSNumber numberWithInt:9],[NSNumber numberWithInt:10],[NSNumber numberWithInt:11],[NSNumber numberWithInt:12],[NSNumber numberWithInt:13],[NSNumber numberWithInt:14],[NSNumber numberWithInt:15],[NSNumber numberWithInt:16],[NSNumber numberWithInt:17],[NSNumber numberWithInt:18],[NSNumber numberWithInt:19],[NSNumber numberWithInt:20], nil];
	while (buttons != 20) {
		[[buttonarray objectAtIndex:buttons] setBackgroundColor:color];
		buttons = buttons +1;
	}
	

}
-(IBAction)thirteen {
	object = [NSNumber numberWithInt:13];
	if (thirteen.backgroundColor != nil) {
		[thirteen setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 13) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}
		[allnumbers setBackgroundColor:nil];
	}
	else {
		object = [NSNumber numberWithInt:13];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}
		[thirteen setBackgroundColor:color];
		
	}
}
-(IBAction)fourteen{
	if (fourteen.backgroundColor != nil) {
		[fourteen setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 14) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}
		[allnumbers setBackgroundColor:nil];

	}
	else {
		[fourteen setBackgroundColor:color];
		object = [NSNumber numberWithInt:14];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}
		
		
	}
}
-(IBAction)fifteen{
	if (fifteen.backgroundColor != nil) {
		[fifteen setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 15) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}
		
	}
	else {
		[fifteen setBackgroundColor:color];
		object = [NSNumber numberWithInt:15];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
}
-(IBAction)sixteen{
	if (sixteen.backgroundColor != nil) {
		[sixteen setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 16) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}
	}
	else {
		[sixteen setBackgroundColor:color];
		object = [NSNumber numberWithInt:16];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
}
-(IBAction)seventeen{
	if (seventeen.backgroundColor != nil) {
		[seventeen setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 17) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}
	}
	else {
		[seventeen setBackgroundColor:color];
		object = [NSNumber numberWithInt:17];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
}
-(IBAction)eighteen{
	if (eighteen.backgroundColor != nil) {
		[eighteen setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 18) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[eighteen setBackgroundColor:color];
		object = [NSNumber numberWithInt:18];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
}
-(IBAction)ninetteen{
	if (ninetteen.backgroundColor != nil) {
		[ninetteen setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 19) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[ninetteen setBackgroundColor:color];
		object = [NSNumber numberWithInt:19];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
}
-(IBAction)oneandtw{
	if (oneandtw.backgroundColor != nil) {
		[oneandtw setBackgroundColor:nil];
		practice = 2;
		[twandtwenty setBackgroundColor:color];
		[allsecond setBackgroundColor:nil]; 

	}
	else {
		[oneandtw setBackgroundColor:color];
		practice = 1;
		if (twandtwenty.backgroundColor == color) {
		practice = 3;
		[allsecond setBackgroundColor:color];
		}
	}
}
-(IBAction)twandtwenty{
	if (twandtwenty.backgroundColor != nil) {
		[twandtwenty setBackgroundColor:nil];
		[allsecond setBackgroundColor:nil]; 
		practice = 1;
		[oneandtw setBackgroundColor:color];

	}
	else {
		[twandtwenty setBackgroundColor:color];
		practice = 2;
		if (oneandtw.backgroundColor != nil) {
		practice = 3;
		[allsecond setBackgroundColor:color];

		}
		
		
	}
}
-(IBAction)allsecond{
	if (allsecond.backgroundColor != nil) {
		muiltveiwcontroller.diffe = 3;
		[allsecond setBackgroundColor:nil]; 
	}
	else {
		[allsecond setBackgroundColor:color];
		practice = 3;
		[oneandtw setBackgroundColor:color];
		[twandtwenty setBackgroundColor:color];		
	}
}
-(IBAction)twenty{
	if (twenty.backgroundColor != nil) {
		[twenty setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 20) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[twenty setBackgroundColor:color];
		object = [NSNumber numberWithInt:20];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
}
-(IBAction)slider{
	 num6 = numofquestions.value;
	NSString *numofit = [NSString stringWithFormat:@"%d Questions", num6];
	numofqueslabel.text = numofit;
}
-(IBAction)one {
	
	if (one.backgroundColor != nil) {
		[one setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 1) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[one setBackgroundColor:color];
		object = [NSNumber numberWithInt:1];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}
	}
}
-(IBAction)two {

	if (two.backgroundColor != nil) {
		[two setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 2) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[two setBackgroundColor:color];
		object = [NSNumber numberWithInt:2];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}	

}
-(IBAction)three {
	
	
	if (three.backgroundColor != nil) {
		[three setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 3) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[three setBackgroundColor:color];
		object = [NSNumber numberWithInt:3];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
}
-(IBAction)four {

	if (four.backgroundColor != nil) {
		[four setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 4) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[four setBackgroundColor:color];
		object = [NSNumber numberWithInt:4];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
	
}
-(IBAction)five {
	
	if (five.backgroundColor != nil) {
		[five setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 5) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[five setBackgroundColor:color];
		object = [NSNumber numberWithInt:5];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
	
}-(IBAction)six {
	
	
	if (six.backgroundColor != nil) {
		[six setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 6) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[six setBackgroundColor:color];
		object = [NSNumber numberWithInt:6];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
}
-(IBAction)seven {
	
	if (seven.backgroundColor != nil) {
		[seven setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 7) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[seven setBackgroundColor:color];
		object = [NSNumber numberWithInt:7];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
	
}
-(IBAction)ight {

	if (ight.backgroundColor != nil) {
		[ight setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 8) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[ight setBackgroundColor:color];
		object = [NSNumber numberWithInt:8];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
	
}
-(IBAction)nine {
	
	if (nine.backgroundColor != nil) {
		[nine setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 9) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[nine setBackgroundColor:color];
		object = [NSNumber numberWithInt:9];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
	
}
-(IBAction)ten {
	
	if (ten.backgroundColor != nil) {
		[ten setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count< [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 10) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[ten setBackgroundColor:color];
		object = [NSNumber numberWithInt:10];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
		
	}
	
}
-(IBAction)eleven {
	
	if (eleven.backgroundColor != nil) {
		[eleven setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 11) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[eleven setBackgroundColor:color];
		object = [NSNumber numberWithInt:11];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
	
}
-(IBAction)twelve {
	
	if (twelve.backgroundColor != nil) {
		[twelve setBackgroundColor:nil];
		[allnumbers setBackgroundColor:nil];
		int count = 0;
		while (count < [numberstobeused1 count]) {
			if ([[numberstobeused1 objectAtIndex:count] intValue] == 12) {
				[numberstobeused1 removeObjectAtIndex:count];
			}
			count = count +1;	
		}	}
	else {
		[twelve setBackgroundColor:color];
		object = [NSNumber numberWithInt:12];
		[numberstobeused1 addObject:object];
		if ([numberstobeused1 count] == 20) {
			[allnumbers setBackgroundColor:color];
		}		
	}
	
}
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return numbool for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[nums release];
	
	[buttonarray release];
	[numberstobeused1 release];
    [super dealloc];
}


@end
