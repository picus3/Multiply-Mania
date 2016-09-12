//
//  Muilti.h
//  Muiltiplication App
//
//  Created by Sam Picus on 11/28/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Name, record, Choose;

@interface Muilti : UIViewController 
		<UITextFieldDelegate>	{
			Name *nameviewcontroller;
			Choose *chooos;
			int practice;
			IBOutlet UITextField *textField;
			IBOutlet UILabel *oneNum;
			IBOutlet UILabel *twoNum;
			IBOutlet UILabel *time;
			IBOutlet UILabel *correctlabel;
			IBOutlet UILabel *questions;
			IBOutlet UILabel *numright;
			int diffe;
			int question;
			int generated;
			int me;
			int numofquestions;
			int numofright;
			int numanserwed;
			int thetime;
			int thetime2;
			int itisit;
			NSTimer *mytimer;
			NSString *bob2;
			NSString *string;
			NSString *name;
			NSString *bob3;
			NSValue *praticar;
			BOOL *got;
			int state;
			int activetimer;
			IBOutlet UIView *secret;
			BOOL highscore;
			NSMutableArray *numberstobeused;
			int timesflashed;
	

}
-(void)yeah;
-(void)byekeyboard;
-(void)main2;
-(void)activatetimer;
-(NSArray *)info;
-(NSArray *)score;
-(IBAction)highscore;
-(void)dissmis:(NSString *)bob1;
- (NSString *)stats;
-(void)done:(NSArray *)info;
-(void)timerFireMethod;
-(void)timerFireMethod2;
-(void)red;
-(IBAction)back;
-(void)notred;
-(void)thething;
-(IBAction)okay;
-(IBAction)correct;
- (void)main:(int)diff;
- (void)genratenumber;
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
-(void)viewWillAppear:(BOOL)animated;
@property int activetimer;
@property int diffe;
@property int numofquestions;
@property int numanserwed;
@property int thetime;
@property int thetime2;
@property int numofright;
@property int practice;
@property (nonatomic, retain) NSMutableArray *numberstobeused;
@property (nonatomic, retain) NSString *bob3;
@property (nonatomic, retain) NSString *bob2;
@property (nonatomic, retain ) IBOutlet Name *nameviewcontroller;
@property (nonatomic, retain ) NSTimer *mytimer;
@property (nonatomic, retain) IBOutlet UILabel *questions;
@property (nonatomic, retain) IBOutlet UILabel *numright;
@property (nonatomic, retain) IBOutlet UILabel *correctlabel;
@property (nonatomic, retain) IBOutlet UILabel *oneNum;
@property (nonatomic,retain) IBOutlet UILabel *twoNum;
@property (nonatomic, retain) IBOutlet UILabel *time;
@property (nonatomic, retain) IBOutlet UITextField *textField;
@end
