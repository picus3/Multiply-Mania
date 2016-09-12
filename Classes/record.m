//
//  record.m
//  Muiltiplication App
//
//  Created by Sam Picus on 1/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "record.h"
#import "Name.h"
#import "Muilti.h"

@implementation record
@synthesize key;
@synthesize newkey;
@synthesize placeholder;
@synthesize dict;
@synthesize dictarray;
@synthesize UsingArray;
@synthesize key2;
@synthesize person1;
@synthesize labels;
@synthesize labels2;
@synthesize personname;
@synthesize timedict;
@synthesize time2dict;
@synthesize triesdict;
@synthesize work;
@synthesize things;
@synthesize person;
@synthesize score;
@synthesize label1;
@synthesize label2;
@synthesize label3;
@synthesize label4;
@synthesize label5;
@synthesize label6;
@synthesize label7;
@synthesize label8;
@synthesize label9;
@synthesize label10;
@synthesize label12;
@synthesize label22;
@synthesize label32;
@synthesize label42;
@synthesize label52;
@synthesize label62;
@synthesize label72;
@synthesize label82;
@synthesize label92;
@synthesize label102;





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
	[[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationPortrait];
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)viewDidLoad {
	if ([self shouldAutorotateToInterfaceOrientation:UIInterfaceOrientationPortrait]) 
	
	[super viewDidLoad];
	
	
}
-(void)start {
	rank= 0;
	
	labels= [NSArray arrayWithObjects:label1,label2,label3,label4,label5,label6,label7,label8,label9,label10,nil];
	labels2= [NSArray arrayWithObjects:label12,label22,label32,label42,label52,label62,label72,label82,label92,label102,nil];
	placeholder = [NSNumber numberWithInt:8];
	UsingArray = [NSArray arrayWithObjects: triesdict, timedict, time2dict, personname, placeholder, placeholder, placeholder, person1, nil]; // last 4 place holders
	if ([UsingArray count] == 0) {
		self.personname = [NSMutableDictionary dictionaryWithCapacity:10];
		self.triesdict =[NSMutableDictionary dictionaryWithCapacity:10];
		self.timedict = [NSMutableDictionary dictionaryWithCapacity:10];
		self.time2dict = [NSMutableDictionary dictionaryWithCapacity:10];
		
		UsingArray = [NSArray arrayWithObjects: triesdict, timedict, time2dict, personname, placeholder, placeholder, placeholder, person1, nil]; // last 4 place holders

	}
	dictarray = [ NSMutableArray arrayWithCapacity:12];
	[dictarray addObjectsFromArray:UsingArray];
	score = [things score];
	
		if ([score count] == 3 ) {
			[self printrecords:9];
		}
		else {
			person = [score objectAtIndex:3] ;
			time = [[score objectAtIndex:2] integerValue];
			tries = [[score objectAtIndex:0] integerValue];
			time2 = [[score objectAtIndex:1] integerValue];
			[self decide];
		}

}
-(IBAction)menu {
	Muiltiplication_AppAppDelegate *bobtothemax= (Muiltiplication_AppAppDelegate *)[[UIApplication sharedApplication] delegate];
	[bobtothemax menu];
}

-(IBAction)easy {
	self.personname = [NSMutableDictionary dictionaryWithCapacity:10];
	self.triesdict =[NSMutableDictionary dictionaryWithCapacity:10];
	self.timedict = [NSMutableDictionary dictionaryWithCapacity:10];
	self.time2dict = [NSMutableDictionary dictionaryWithCapacity:10];
	
	
	label1.text =@"1.			";
	label2.text =@"2.			";
	label3.text =@"3.			";
	label4.text =@"4.			";
	label5.text =@"5.			";
	label6.text =@"6.			";
	label7.text =@"7.			";
	label8.text =@"8.			";
	label9.text =@"9.			";
	label10.text =@"10.			";
	label12.text =@"			";
	label22.text =@"			";
	label32.text =@"			";
	label42.text =@"			";
	label52.text =@"			";
	label62.text =@"			";
	label72.text =@"			";
	label82.text =@"			";
	label92.text =@"			";
	label102.text =@"			";
	
	
	
		
		
}
-(IBAction)medium{
}
-(IBAction)hard{
}
-(void)decide{
	
	
	int yes= 1;
	int match = 1;
	NSNumber *pastscoreobject = [triesdict objectForKey:@"0"];
	pastscore = [pastscoreobject integerValue];
	while (yes == 1) {
		key =[NSString stringWithFormat:@"%d", rank];
		// checks if their is any previous data
		NSObject *bob = [personname objectForKey:key];
		if (bob == nil) {
			yes = 2;
			
		}
		else {
			// compares data
			
			pastscoreobject = [triesdict objectForKey:key];
			pastscore = [pastscoreobject integerValue];
			// same amount of wrong 
			if (pastscore == tries) {
				//measures time will return yes or no wheather one is better or not
				yes = [self theymatch];
				// if return no move on to the next one
				// if yes it will end the loop
				if (yes == 1){
					rank = rank + 1;
				}
					
			}
			else {
				// decides which one is better
				if (pastscore > tries){
					//better one stops loop
					yes= 2;
				}
				// otherwise takes next in ranking
				else {
					rank = rank + 1;
				}
			}

		}
		if (rank == 9) {
			// if it does not make it on the highscores
			yes = 2;
			match = 2;
		}
	
		
	
	}
	// if it makes the highscores update records
	if (match == 1 ) {
		[self updaterecords];
	}
	else {
		[self printrecords:9];
	}

}
-(void)updaterecords {
	// placeholder so that it has 8 spots
	
	// what is put if their is no data for that rank
	person1 = @" ";
	// puts all ditionaries into dictarry

	// rank that person is currently at ex bob is at 5
	
	// rank it will be moved to ex bob will be moved to 6
	
	// rank that it is in it will first take spot at 9 and move it down to 10
	int position = 8;
	// the ditionary it is working with
	dictionary = 0;
	while (position != rank-1) {
		Key2 = [NSString stringWithFormat:@"%d",position];
		newkey = [NSString stringWithFormat:@"%d",position + 1];
		dictionary = 0;
		// moves data in dictionaries back one for each dictionary
		while (dictionary != 4) {
			// gets dictonary to work with
			dict = [dictarray objectAtIndex:dictionary];
			// data it is moving back
			NSObject *info	= [dict objectForKey:Key2];
			// if there is no entry skip it
			if (info == nil) {
				dictionary = 4;
				
			}
			else {
			// puts infor into dictarray right after the dictonary usedlater for printing
			[dictarray insertObject:info atIndex:dictionary + 4];
			[dict objectForKey:Key2];
			// takes info from dictarray and moves it back a rank	
			[dict setObject:[dictarray objectAtIndex:dictionary + 4] forKey:newkey];
			// moves on to next dictionar
				dictionary = dictionary + 1;
				//pulls information out for printing
				person1=[dictarray objectAtIndex:7];
				time1=[[dictarray objectAtIndex:5] integerValue];
				time12=[[dictarray objectAtIndex:6] integerValue];
				tries1=[[dictarray objectAtIndex:4] integerValue];
			}
			
			
			}
		// prints info on to the lable
		UILabel *thelable = [labels objectAtIndex:position + 1];
		UILabel *thelable2= [labels2 objectAtIndex:position + 1];
		NSString *stat = [NSString stringWithFormat: @"%d. %@", position + 2,person1];
		NSString *stat2 = [NSString stringWithFormat: @"%d			                       %d:%2.2d",tries1,time12,time1];
		thelable.text =stat;
		thelable2.text = stat2;
		
		
		
		
		time1=0;
		time12=0;
		tries1=0;
		
		position = position - 1;	
			
	}
	[self saverecords];
	[self printrecords:position];
}
-(void)printrecords:(int)position {
	

	while (position != -1) {
		dictionary = 0;
		person1 = @" ";
		
		//calls info to print one after the one just saved
		Key2 = [NSString stringWithFormat:@"%d",position];
		
			
		
		while (dictionary != 4) {
			// gets info from dictonary
		dict = [dictarray objectAtIndex:dictionary];
		// saves as info and puts in array
		NSObject *info	= [dict objectForKey:Key2];
			if (info==nil) {
				dictionary=4;
			}
			else {
		[dictarray insertObject:info atIndex:dictionary + 4];
		dictionary = dictionary + 1;
		// grabs info and saves it 	
		person1=[dictarray objectAtIndex:7];
		time1=[[dictarray objectAtIndex:5] integerValue];
		time12=[[dictarray objectAtIndex:6] integerValue];
		tries1=[[dictarray objectAtIndex:4] integerValue];
			}
			
		}
		// takes info that is saved and prints it
			
		UILabel *thelable = [labels objectAtIndex:position];
		UILabel *thelable2= [labels2 objectAtIndex:position];
		NSString *stat = [NSString stringWithFormat: @"%d. %@", position + 1,person1];
		NSString *stat2 = [NSString stringWithFormat: @"%d			                       %d:%2.2d",tries1,time12,time1];
		thelable.text =stat;
		thelable2.text = stat2;
		
		position = position - 1;
		
	}
}
	
-(void)saverecords {	
	NSValue *thing = [NSNumber numberWithInt:tries]; 
	[triesdict setObject:thing forKey: key];
	[personname setObject:person forKey:key];
	[timedict setObject:[score objectAtIndex:2] forKey:key];
	[time2dict setObject:[score objectAtIndex:1] forKey:key];
	[[NSUserDefaults standardUserDefaults] setObject:personname  forKey:@"personname"];
	[[NSUserDefaults standardUserDefaults] setObject:timedict  forKey:@"time"];
	[[NSUserDefaults standardUserDefaults] setObject:time2dict  forKey:@"time2"];
	[[NSUserDefaults standardUserDefaults] setObject:triesdict  forKey:@"tries"];
	
	UILabel *thelable = [labels objectAtIndex:rank];
	UILabel *thelable2= [labels2 objectAtIndex:rank];
	NSString *stat = [NSString stringWithFormat: @"%d. %@", rank + 1,person];
	NSString *stat2 = [NSString stringWithFormat: @"%d			                       %d:%2.2d",tries,time2,time];
	thelable.text =stat;
	thelable2.text = stat2;
}
-(int)theymatch {
	if ([[time2dict objectForKey:key] integerValue] == time2) {
		if ([[timedict objectForKey:key] integerValue] > time){
			return 2;
		}
		else {
			return 1;
		}}
	else {
		if ([[time2dict objectForKey:key ] integerValue] > time2) {
			return 2;
		}
		else {
			return 1;
		}

	}


}
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	[[NSUserDefaults standardUserDefaults] setObject:personname  forKey:@"personname"];
	[[NSUserDefaults standardUserDefaults] setObject:timedict  forKey:@"time"];
	[[NSUserDefaults standardUserDefaults] setObject:time2dict  forKey:@"time2"];
	[[NSUserDefaults standardUserDefaults] setObject:triesdict  forKey:@"tries"];
	
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[personname release];
	[timedict	release];
	[time2dict	release];
	[triesdict release];
	 [key release];
	[newkey release];
	 [placeholder release];
	 [dict release];
	 [dictarray release];
	 [UsingArray release];
	 [key2 release];
	 [person1 release];
	 [labels release];
	 [labels2 release];
	
	 [work release];
	 [things release];
	 [person release];
	 [score release];
	 [label1 release];
	 [label2 release];
	 [label3 release];
	 [label4 release];
	 [label5 release];
	 [label6 release];
	 [label7 release];
	 [label8 release];
	 [label9 release];
	 [label10 release];
	 [label12 release];
	 [label22 release];
	 [label32 release];
	 [label42 release];
	 [label52 release];
	 [label62 release];
	 [label72 release];
	 [label82 release];
	 [label92 release];
	 [label102 release];
    [super dealloc];
}


@end
