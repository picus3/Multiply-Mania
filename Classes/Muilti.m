//
//  Muilti.m
//  Muiltiplication App
//
//  Created by Sam Picus on 11/28/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "Muilti.h"
#import "Name.h"
#import "Muiltiplication_AppAppDelegate.h"
#import "Choose.h"
#include <xlocale.h>
#include <unistd.h>
#include <time.h>
#import <sys/timeb.h>


@implementation Muilti;
@synthesize bob2;
@synthesize bob3;
@synthesize textField;
@synthesize oneNum;
@synthesize twoNum;
@synthesize time;
@synthesize correctlabel;
@synthesize questions;
@synthesize mytimer;
@synthesize nameviewcontroller;
@synthesize diffe;
@synthesize numanserwed;
@synthesize numofquestions;
@synthesize thetime;
@synthesize numofright;
@synthesize activetimer;
@synthesize thetime2;
@synthesize numright;
@synthesize practice;
@synthesize numberstobeused;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)viewWillAppear:(BOOL)animated { 
	state=0;
	[[NSNotificationCenter defaultCenter] removeObserver:self];
	[[NSNotificationCenter defaultCenter] addObserver: self
											 selector: @selector(keyboardWillShow:)
												 name: UIKeyboardWillShowNotification
											   object:self.view.window];
	
	
	
	
}	

- (void)viewDidLoad {
    if ([self shouldAutorotateToInterfaceOrientation:UIInterfaceOrientationLandscapeRight ]);
	[super viewDidLoad];
	
	

}


- (void)keyboardWillShow: (NSNotification *)notif {
	[self activatetimer];
	[UIView beginAnimations: nil context: NULL];
	[UIView setAnimationDuration:0.3];
		CGRect thing2 = self.view.frame;
     thing2.origin.x = thing2.origin.x + 142;
	self.view.frame = thing2;
	[UIView commitAnimations];

}
-(void)activatetimer {
	if (activetimer == 1) {
		
	}
	else {
	NSRunLoop *runloop = [NSRunLoop currentRunLoop];
	mytimer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(timerFireMethod) userInfo:nil repeats:YES];
	[runloop addTimer:mytimer forMode:NSDefaultRunLoopMode];
		activetimer = 1;
	}
}
- (void)main:(int)diff {
	 diffe = diff;
	numofquestions = 30;
	numofright = 0;
	numanserwed = 0;
	thetime = 00;
	thetime2 = 0;
	Muiltiplication_AppAppDelegate *delegate= (Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];

	if (diffe == 4) {
		if (delegate.bob != nil) {
			
		
		Muiltiplication_AppAppDelegate *delegate= (Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
		numofquestions = delegate.delegatnumofquestions;
		self.numberstobeused = delegate.bob;
		itisit = numofquestions;
		}
	}
	

	[self genratenumber];
}
-(void)main2 {

	NSString *myNewString = [NSString stringWithFormat:@"%d/%d", numofright, numanserwed];
	numright.text = myNewString;
	myNewString = [NSString stringWithFormat:@"%d More to go", numofquestions];
	questions.text = myNewString;
	myNewString = [NSString stringWithFormat:@"%d:%2.2d ",thetime2, thetime];
	time.text = myNewString;
	
}

-(NSString *)stats {
	int dan = numanserwed - numofright;
	
	NSString *stats = [NSString stringWithFormat:@"Number of Second Tries   %d				%d:%2.2d" , dan,thetime2,thetime];
	return stats;
}

- (void)timerFireMethod {
	thetime = thetime + 1;
	if (thetime == 60) {
		thetime = 00;
		thetime2 = thetime2 + 1;
	}
	NSString *myNewString = [NSString stringWithFormat:@"%d:%2.2d ",thetime2, thetime];
	time.text = myNewString;
	
}

-(IBAction)okay {
	[secret removeFromSuperview];
}



- (void)genratenumber {
	int oldnum = me;
	int othernum = generated;
	if (diffe==1){
		while (oldnum == me) {
			me = arc4random() % 12 + 1;
		}
		while (othernum == generated) {
			generated = arc4random() % 12 + 1;
		}
	}
	if (diffe == 2) {
		
		while (oldnum == me) {
			me = arc4random() % 12 + 1;
		}
		while (othernum == generated) {
			generated = arc4random() % 11 + 10;
		}
	}
	if(diffe == 3) {
		
		while (oldnum == me) {
			me = arc4random() % 11 + 10;
		}
		while (othernum == generated) {
			generated = arc4random() % 11 + 10;
		}
	}
	if (diffe == 4) {
		int num = arc4random() % [numberstobeused count];
		if (num == [numberstobeused count]) {
			num = num -1;
		}
		if ([numberstobeused count] > 2) {
			while (oldnum == me) {
				me = [[numberstobeused objectAtIndex:num]intValue];
				 num = arc4random() % [numberstobeused count];
			}
		}
		else {
			me = [[numberstobeused objectAtIndex:num]intValue];
			
		}
		if (practice == 1) {
			generated = arc4random() % 12 + 1;
			if (itisit == 12) {
				generated = 13 - numofquestions;
			}
		}
		if (practice == 2) {
			generated = arc4random() % 13 + 8;
		}
		if (practice == 3) {
			generated = arc4random() % 21 +1;
		}
	}

	
	
	
	NSString* myNewString = [NSString stringWithFormat:@"%d", generated];
	oneNum.text = myNewString;
	myNewString = [NSString stringWithFormat:@"%d", me];
	twoNum.text = myNewString;
	myNewString = [NSString stringWithFormat:@"%d More to go", numofquestions];
	questions.text = myNewString;
	
	
	
	
}
-(IBAction)highscore {
	Muiltiplication_AppAppDelegate *delegate= (Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
	[delegate record];
}
-(NSArray *)score {
	NSValue *aValue = [NSNumber numberWithInt:numanserwed - numofright];
	NSValue *aValue2 = [NSNumber numberWithInt:thetime2];
	NSValue *aValue3 = [NSNumber numberWithInt:thetime];
	NSArray *myarray = [NSArray arrayWithObjects: aValue, aValue2,aValue3,bob3,nil];
	numanserwed = 0;
	numofright =0;
	thetime = 0;
	thetime2 = 0;
	bob3 = nil;
	return myarray;
}
-(NSArray *)info {
	NSValue *aValue = [NSNumber numberWithInt:numanserwed];
	NSValue *diffe2 = [NSNumber numberWithInt:diffe];
	NSValue *aValue2 = [NSNumber numberWithInt:thetime2];
	NSValue *aValue3 = [NSNumber numberWithInt:thetime];
	NSValue *aVaule4 = [NSNumber numberWithInt:numofright];
	NSValue *aVaule5 = [NSNumber numberWithInt:numofquestions];
	NSValue *aVaule6 = [NSNumber numberWithInt:state];
		if (state==1) {
		 string = nameviewcontroller.stats.text;
		
	}
		if (diffe==4) {
			praticar = [NSNumber numberWithInt:practice];
			[praticar retain];
		}
	NSArray *nameinfo = [NSArray arrayWithObjects:string, nil];
	NSArray *myarray1 = [NSArray arrayWithObjects:diffe2, aVaule6, aValue, aValue2, aValue3, aVaule4, aVaule5, numberstobeused, praticar, nil];
	NSArray *myarray = [NSArray arrayWithObjects:myarray1, nameinfo, nil];
	return myarray;
	[praticar release];
}

-(void)yeah {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:2.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:NO];

	[self.view addSubview:secret];
	
	[UIView commitAnimations];
	[mytimer invalidate];
	activetimer = 2;
}
-(IBAction)correct {
	NSString *bob = textField.text;
	int fred = [bob intValue];
	if (fred == 74287) {
		[self byekeyboard];
		[mytimer invalidate];
		
		[textField resignFirstResponder];
		mytimer = [NSTimer timerWithTimeInterval:.41 target:self selector:@selector(yeah) userInfo:nil repeats:NO];
		NSRunLoop *runloop = [NSRunLoop currentRunLoop];
		[runloop addTimer:mytimer forMode:NSDefaultRunLoopMode];
		
		
		
	}
	if (me * generated == fred) {

		NSString *thing = @"Correct";
		UIColor *green = [UIColor greenColor];
		correctlabel.textColor = green;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.7];
		[UIView setAnimationDelegate:self];
		[UIView setAnimationDidStopSelector:@selector(thething)];
		correctlabel.text = thing;
		CGAffineTransform transform = CGAffineTransformMakeScale(1.3, 1.3);
		correctlabel.transform = transform;
		[UIView commitAnimations];
		numofright = numofright + 1;
		numanserwed = numanserwed +1;
		if (numofquestions == 1) {
			[mytimer invalidate];
			activetimer = 2;
			mytimer = nil;
			[textField resignFirstResponder];
			[self byekeyboard];
			mytimer = [NSTimer timerWithTimeInterval:.45 target:self selector:@selector(timerFireMethod2) userInfo:nil repeats:NO];
			NSRunLoop *runloop = [NSRunLoop currentRunLoop];
			[runloop addTimer:mytimer forMode:NSDefaultRunLoopMode];
			
			}
		numofquestions = numofquestions - 1;
		[self genratenumber];
		textField.text=nil;
		
		
	
		
	
	
		
		
		
		
	}
	else {
		UIColor *red = [UIColor redColor];
		correctlabel.text = @"Wrong";
		
		
			correctlabel.textColor=red;
		timesflashed = 0;
		[self performSelector:@selector(notred) withObject:nil afterDelay:.3];
		
			textField.text = nil;
		numanserwed = numanserwed +1;
		
			
		
	}
	NSString *myNewString = [NSString stringWithFormat:@"%d/%d", numofright, numanserwed];
	numright.text = myNewString;
}
-(IBAction)back {
	Muiltiplication_AppAppDelegate *delegate= (Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
	[self byekeyboard];
	[textField resignFirstResponder];
	[delegate performSelector:@selector(menu) withObject:nil afterDelay:.3];
}
-(void)byekeyboard {
	if (self.view.frame.origin.x > 0) {
		
	
	[UIView beginAnimations: nil context:NULL];
	[UIView setAnimationDuration:.4];
	CGRect thing2 = self.view.frame;
	
	thing2.origin.x = thing2.origin.x - 142;
	self.view.frame = thing2;
	[UIView commitAnimations];
	}
}
-(void)timerFireMethod2 {
	[self done:nil];
	[mytimer invalidate];
	activetimer = 2;
	mytimer = nil;
}

-(void)thething {
	correctlabel.text = nil;
	CGAffineTransform transform = CGAffineTransformMakeScale(1.0, 1.00);
	correctlabel.transform = transform;
	
	
}
-(void)red {
	
	
	if (timesflashed != 2) {
	correctlabel.text = @"Wrong";
	[self performSelector:@selector(notred) withObject:nil afterDelay:.3];
		timesflashed = timesflashed + 1;
	}
	
}

-(void)notred {
	correctlabel.text = nil;
	[self performSelector:@selector(red) withObject:nil afterDelay:.3];

	
}
-(void)done:(NSArray *)info {
	if (diffe !=4) {
		
	
	[self presentModalViewController:nameviewcontroller animated:YES];
	state=1;
	[[NSNotificationCenter defaultCenter] removeObserver:self];
	[nameviewcontroller start];
	if ([info count] != 0) {
		nameviewcontroller.stats.text = [info objectAtIndex:0];
	
		
	}
	}
	else {
		
	

	Muiltiplication_AppAppDelegate *delegate= (Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
[[NSNotificationCenter defaultCenter] removeObserver:self];
		[delegate menu];
	 }
}
-(void)dissmis:(NSString *)bob1 {
	bob2 = bob1;
	bob3= bob1;
	
	[self dismissModalViewControllerAnimated:NO];
	state=0;
	CGRect thing2 = self.view.frame;
	thing2.origin.y = thing2.origin.y - 20;
	self.view.frame = thing2;
	

}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
}



- (void)dealloc {
	
	[bob2 release];
	[mytimer release];
	[bob3 release];
	[textField release];
	[oneNum release];
	[twoNum release];
	[numberstobeused release];
	[time release];
	[correctlabel release];
	[questions release];
	[numright release];
	[nameviewcontroller release];
    [super dealloc];
}

-(BOOL) textFieldShouldReturn: (UITextField *)theTextField {
	return NO;
	
}

@end
