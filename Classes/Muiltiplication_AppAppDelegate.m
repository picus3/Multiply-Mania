//
//  Muiltiplication_AppAppDelegate.m
//  Muiltiplication App
//
//  Created by Sam Picus on 11/28/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Muiltiplication_AppAppDelegate.h"
#import "Start.h"
#import "Muilti.h"
#import "record.h"
#import "Muiltiplication_AppAppDelegate.h"

@implementation Muiltiplication_AppAppDelegate

@synthesize window;
@synthesize viewController;
@synthesize flipview;
@synthesize secondViewController;
@synthesize recordviewcontroller;
@synthesize bob;
@synthesize numberstobeused;
@synthesize savedinfo;
@synthesize buttoninfo;
@synthesize practice;
@synthesize delegatnumofquestions;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	state = 1;
    [window addSubview:viewController.view];
	[window makeKeyAndVisible];
	recordviewcontroller.personname =[[NSUserDefaults standardUserDefaults] objectForKey:@"personname"];
	recordviewcontroller.timedict = [[NSUserDefaults standardUserDefaults] objectForKey:@"time"];
	recordviewcontroller.time2dict = [[NSUserDefaults standardUserDefaults] objectForKey:@"time2"];
	recordviewcontroller.triesdict = [[NSUserDefaults standardUserDefaults] objectForKey:@"tries"];
	rateit = [[[NSUserDefaults standardUserDefaults] objectForKey:@"rate"] intValue];
	NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *filepath = [[path objectAtIndex:0] stringByAppendingPathComponent:@"state"];
	NSDictionary *Dictonary  = [[NSDictionary alloc] initWithContentsOfFile:filepath];

	if (Dictonary != nil) {
		[self returnstate:Dictonary];
	}
	[Dictonary release];
	
	
}

- (void)applicationWillResignActive:(UIApplication *)application {
	if (state == 2) {
	[secondViewController.mytimer invalidate];
		secondViewController.activetimer = 2;
	}
}
- (void)applicationDidEnterBackground:(UIApplication *)application {
	if (state == 2) {
		info =[secondViewController info];
		[secondViewController.textField resignFirstResponder];
		[secondViewController byekeyboard];
		NSValue *statevaule = [NSNumber numberWithInt:state];
		NSDictionary *Dictonary= [NSDictionary dictionaryWithObjectsAndKeys:statevaule, @"state", info, @"info", nil];
		NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
		NSString *filepath = [[path objectAtIndex:0] stringByAppendingPathComponent:@"state"];
		[Dictonary writeToFile:filepath atomically:YES];
	
	}
	if (state == 1) {
		[viewController save];
		NSValue *statevaule = [NSNumber numberWithInt:state];
		NSArray *pushedbuttons = viewController.savedinfo2;
		[pushedbuttons retain];
		NSDictionary *Dictonary= [NSDictionary dictionaryWithObjectsAndKeys:statevaule, @"state",  nil];
		NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
		NSString *filepath = [[path objectAtIndex:0] stringByAppendingPathComponent:@"state"];
		[Dictonary writeToFile:filepath atomically:YES];
		Dictonary = nil;
		Dictonary = [NSDictionary dictionaryWithObjectsAndKeys: pushedbuttons, @"pushed", nil];
		NSArray  *path2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
		NSString  *filepath2 = [[path2 objectAtIndex:0] stringByAppendingPathComponent:@"saved"];
		[Dictonary writeToFile:filepath2 atomically:YES];
		
		
		[pushedbuttons release]; 
		
		
	}
	if (state == 3) {
		NSValue *statevaule = [NSNumber numberWithInt:state];

		NSDictionary *Dictonary= [NSDictionary dictionaryWithObjectsAndKeys:statevaule, @"state",  nil];
		NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
		NSString *filepath = [[path objectAtIndex:0] stringByAppendingPathComponent:@"state"];	
		[Dictonary writeToFile:filepath atomically:YES];
	}
		[[NSUserDefaults standardUserDefaults] setObject:recordviewcontroller.personname  forKey:@"personname"];
		[[NSUserDefaults standardUserDefaults] setObject:recordviewcontroller.timedict  forKey:@"time"];
		[[NSUserDefaults standardUserDefaults] setObject:recordviewcontroller.time2dict  forKey:@"time2"];
		[[NSUserDefaults standardUserDefaults] setObject:recordviewcontroller.triesdict  forKey:@"tries"];	
		[[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:rateit] forKey:@"rate"];	

}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	if (state == 2) {
		[secondViewController activatetimer];
	
	}
}
-(void)applicationWillEnterForeground:(UIApplication *)application {
	
}

-(void)returnstate:(NSDictionary *)statetobereturned {
	state = [[statetobereturned objectForKey:@"state"] integerValue];
	if (state == 1) {
		NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
		NSString *filepath = [[path objectAtIndex:0] stringByAppendingPathComponent:@"saved"];
		NSDictionary *frank = [[NSDictionary alloc] initWithContentsOfFile:filepath];
		self.buttoninfo = [frank objectForKey:@"pushed"];
		if (buttoninfo != nil) {
			
		
			
		
		
		[viewController statetobereturned:buttoninfo];
		[frank release];
		}
	}
	if (state == 3) {
		[window addSubview:recordviewcontroller.view];
		[viewController.view removeFromSuperview];
		[recordviewcontroller start];
	}
	if (state == 2 ) {
		NSArray *info2 = [[statetobereturned objectForKey:@"info"] objectAtIndex:0];
		int diff = [[info2 objectAtIndex:0] integerValue];
		if ([info2 count] > 8) {
			secondViewController.numberstobeused = [info2 objectAtIndex:7];
			secondViewController.practice = [[info2 objectAtIndex:8] intValue];
		}
		[self Flip:diff:NO];
		int stateof = [[info2 objectAtIndex:1] integerValue];
		secondViewController.numanserwed = [[info2 objectAtIndex:2] integerValue];
		secondViewController.thetime2 = [[info2 objectAtIndex:3] integerValue];
		secondViewController.thetime = [[info2 objectAtIndex:4] integerValue];
		secondViewController.numofright = [[info2 objectAtIndex:5] integerValue];
		secondViewController.numofquestions = [[info2 objectAtIndex:6] integerValue];
		
		[secondViewController main2];
		if (stateof == 1) {
			NSArray *info3 =[[statetobereturned objectForKey:@"info"] objectAtIndex:1];
			NSArray *nameinfo = [NSArray arrayWithObjects:[info3 objectAtIndex:0],nil];
			[secondViewController done:nameinfo];
		}
		else {
			[secondViewController.textField becomeFirstResponder];
		}
		

		
		
		
		
	}
}

- (void)Flip:(int)diff:(BOOL)animate {
	if (animate) {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:2.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:NO];
	[viewController.view removeFromSuperview];
	[window addSubview:secondViewController.view];
	state = 2;
	[UIView commitAnimations];
		self.bob = viewController.bob;
		secondViewController.practice = viewController.practice;
		delegatnumofquestions = viewController.startnumofquestions;
	[secondViewController main:diff];
		[secondViewController main2];
	}
	else {
		[viewController.view removeFromSuperview];
		[window addSubview:secondViewController.view];
		state = 2;
		[secondViewController main:diff];
	}

	
	
}
-(void)menu {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:2.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:NO];
	[recordviewcontroller.view removeFromSuperview];
	[secondViewController.view removeFromSuperview];
	[window addSubview:viewController.view];
	state = 1;
	[UIView commitAnimations];
	if (rateit == 0) {
		rateit = 0;
	}
	if (rateit == 9) {
		[viewController rate];
	}
	if (rateit == 100){
		[viewController rate];
	}
	rateit = rateit + 1;
	[viewController state];
	
}
-(void)record {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:2.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:NO];
	[viewController.view removeFromSuperview];
	[secondViewController.view removeFromSuperview];
	[window addSubview:recordviewcontroller.view];
	
	[UIView commitAnimations];
	[recordviewcontroller start];
	state = 3;

}


- (void)dealloc {
	[savedinfo release];
    [window release];
	[bob release];
	[flipview release];
	[buttoninfo release];
	[numberstobeused release];
	[recordviewcontroller release];
	[secondViewController release];
	[viewController release];
    [super dealloc];
}
-(void)applicationWillTerminate:(UIApplication *)application {
	if (state == 2) {
		info =[secondViewController info];
		[secondViewController.textField resignFirstResponder];
		[secondViewController byekeyboard];
		NSValue *statevaule = [NSNumber numberWithInt:state];
		NSDictionary *Dictonary= [NSDictionary dictionaryWithObjectsAndKeys:statevaule, @"state", info, @"info", nil];
		NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
		NSString *filepath = [[path objectAtIndex:0] stringByAppendingPathComponent:@"state"];
		[Dictonary writeToFile:filepath atomically:YES];
		
	}
	if (state == 1) {
		[viewController save];
		NSValue *statevaule = [NSNumber numberWithInt:state];
		NSArray *pushedbuttons = viewController.savedinfo2;
		[pushedbuttons retain];
		NSDictionary *Dictonary= [NSDictionary dictionaryWithObjectsAndKeys:statevaule, @"state",  nil];
		NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
		NSString *filepath = [[path objectAtIndex:0] stringByAppendingPathComponent:@"state"];
		[Dictonary writeToFile:filepath atomically:YES];
		Dictonary = nil;
		Dictonary = [NSDictionary dictionaryWithObjectsAndKeys: pushedbuttons, @"pushed", nil];
		NSArray  *path2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
		NSString  *filepath2 = [[path2 objectAtIndex:0] stringByAppendingPathComponent:@"saved"];
		[Dictonary writeToFile:filepath2 atomically:YES];
		
		
		[pushedbuttons release]; 
		
		
	}
	if (state == 3) {
		NSValue *statevaule = [NSNumber numberWithInt:state];
		
		NSDictionary *Dictonary= [NSDictionary dictionaryWithObjectsAndKeys:statevaule, @"state",  nil];
		NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
		NSString *filepath = [[path objectAtIndex:0] stringByAppendingPathComponent:@"state"];	
		[Dictonary writeToFile:filepath atomically:YES];
	}
	[[NSUserDefaults standardUserDefaults] setObject:recordviewcontroller.personname  forKey:@"personname"];
	[[NSUserDefaults standardUserDefaults] setObject:recordviewcontroller.timedict  forKey:@"time"];
	[[NSUserDefaults standardUserDefaults] setObject:recordviewcontroller.time2dict  forKey:@"time2"];
	[[NSUserDefaults standardUserDefaults] setObject:recordviewcontroller.triesdict  forKey:@"tries"];	
	[[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:rateit] forKey:@"rate"];	
}

@end
