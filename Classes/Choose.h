//
//  Choose.h
//  Muiltiplication App
//
//  Created by Sam Picus on 1/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@class Start, Muilti;
@interface Choose : UIViewController {
	IBOutlet Start *startviewcontroller;
	IBOutlet Muilti *muiltveiwcontroller;
	NSMutableArray *numberstobeused1;
	IBOutlet UIButton *one;
	IBOutlet UIButton *two;
	IBOutlet UIButton *three;
	IBOutlet UIButton *four;
	IBOutlet UIButton *five;
	IBOutlet UIButton *six;
	IBOutlet UIButton *seven;
	IBOutlet UIButton *ight;
	IBOutlet UIButton *nine;
	IBOutlet UIButton *ten;
	IBOutlet UIButton *eleven;
	IBOutlet UIButton *twelve;
	IBOutlet UIButton *thirteen;
	IBOutlet UIButton *fourteen;
	IBOutlet UIButton *fifteen;
	IBOutlet UIButton *sixteen;
	IBOutlet UIButton *seventeen;
	IBOutlet UIButton *eighteen;
	IBOutlet UIButton *ninetteen;
	IBOutlet UIButton *twenty;
	IBOutlet UIButton *oneandtw;
	IBOutlet UIButton *twandtwenty;
	IBOutlet UIButton *allsecond;
	IBOutlet UISlider *numofquestions;
	IBOutlet UILabel *numofqueslabel;
	NSNumber *object;
	UIColor *color;
	IBOutlet UIButton *allnumbers;
	NSArray *buttonarray;
	int practice;
	int num6;
	
	

}
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
-(void)returnstate:(NSArray *)buttoninfo;
-(void)clearnumbers;
-(IBAction)start;
-(IBAction)one;
-(IBAction)two; 
-(IBAction)three;
-(IBAction)four; 
-(IBAction)five; 
-(IBAction)six;
-(IBAction)seven;
-(IBAction)ight; 
-(IBAction)nine;
-(IBAction)ten;
-(IBAction)eleven;
-(IBAction)twelve;
-(IBAction)thirteen;
-(IBAction)fourteen;
-(IBAction)fifteen;
-(IBAction)sixteen;
-(IBAction)seventeen;
-(IBAction)eighteen;
-(IBAction)ninetteen;
-(IBAction)oneandtw;
-(IBAction)twandtwenty;
-(IBAction)allsecond;
-(IBAction)twenty;
-(IBAction)slider;

-(IBAction)allnumbers;
@property int num6;
@property  int practice;
@property (nonatomic, retain) NSMutableArray *numberstobeused1;
@property (nonatomic, retain) NSArray *buttonarray;
@property(nonatomic, retain) NSMutableDictionary *nums;
@end
