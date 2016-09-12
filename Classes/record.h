//
//  record.h
//  Muiltiplication App
//
//  Created by Sam Picus on 1/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Muilti, Name;
@interface record : UIViewController {
	Name  *work;
	Muilti *things;
	UILabel *label1;
	UILabel *label2;
	UILabel *label3;
	UILabel *label4;
	UILabel *label5;
	UILabel *label6;
	UILabel *label7;
	UILabel *label8;
	UILabel *label9;
	UILabel *label10;
	UILabel *label12;
	UILabel *label22;
	UILabel *label32;
	UILabel *label42;
	UILabel *label52;
	UILabel *label62;
	UILabel *label72;
	UILabel *label82;
	UILabel *label92;
	UILabel *label102;
	NSString *person;
	NSString *person1;
	NSArray *score;
	int time;
	int time1;
	int tries;
	int tries1;
	int time2;
	int time12;
	int pastscore;
	int rank;
	int dictionary;
	int counter;
	NSString *key;
	NSString *Key2;
	NSString *newkey;
	NSMutableDictionary *personname;
	NSMutableDictionary *timedict;
	NSMutableDictionary	*time2dict;
	NSMutableDictionary *triesdict;
	NSArray *labels;
	NSArray *labels2;
	NSArray *UsingArray;
	NSMutableArray *dictarray;
	NSMutableDictionary *dict;
	NSNumber *placeholder;
	
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
-(void)printrecords:(int)position;
-(void)saverecords;
-(void)start;
-(void)updaterecords;
-(int)theymatch;
-(void)decide;
-(IBAction)menu;
-(IBAction)easy;
-(IBAction)hard;
-(IBAction)medium;

@property (retain, nonatomic) NSNumber *placeholder;
@property (retain, nonatomic) NSArray *labels;
@property (retain, nonatomic) NSArray *labels2;
@property (retain, nonatomic) NSArray *UsingArray;
@property (retain, nonatomic) NSString *key;
@property (retain, nonatomic) NSString *key2;
@property (retain, nonatomic) NSMutableDictionary *dict;
@property (retain, nonatomic) NSMutableArray *dictarray;
@property (retain, nonatomic) NSMutableDictionary *personname;
@property (retain, nonatomic) NSMutableDictionary *timedict;
@property (retain, nonatomic) NSMutableDictionary	*time2dict;
@property (retain, nonatomic) NSMutableDictionary *triesdict;
@property (retain, nonatomic) IBOutlet Muilti *things;
@property (retain, nonatomic) IBOutlet Name *work;
@property (retain, nonatomic) NSArray *score;
@property (retain, nonatomic) NSString *person;
@property (retain, nonatomic) NSString *newkey;
@property (retain, nonatomic) NSString *person1;
@property (retain, nonatomic) IBOutlet UILabel *label1;
@property (retain, nonatomic) IBOutlet UILabel *label2;
@property (retain, nonatomic) IBOutlet UILabel *label3;
@property (retain, nonatomic) IBOutlet UILabel *label4;
@property (retain, nonatomic) IBOutlet UILabel *label5;
@property (retain, nonatomic) IBOutlet UILabel *label6;
@property (retain, nonatomic) IBOutlet UILabel *label7;
@property (retain, nonatomic) IBOutlet UILabel *label8;
@property (retain, nonatomic) IBOutlet UILabel *label9;
@property (retain, nonatomic) IBOutlet UILabel *label10;
@property (retain, nonatomic) IBOutlet UILabel *label12;
@property (retain, nonatomic) IBOutlet UILabel *label22;
@property (retain, nonatomic) IBOutlet UILabel *label32;
@property (retain, nonatomic) IBOutlet UILabel *label42;
@property (retain, nonatomic) IBOutlet UILabel *label52;
@property (retain, nonatomic) IBOutlet UILabel *label62;
@property (retain, nonatomic) IBOutlet UILabel *label72;
@property (retain, nonatomic) IBOutlet UILabel *label82;
@property (retain, nonatomic) IBOutlet UILabel *label92;
@property (retain, nonatomic) IBOutlet UILabel *label102;


@end
