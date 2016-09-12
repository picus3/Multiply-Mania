//
//  Start.h
//  Muiltiplication App
//
//  Created by Sam Picus on 11/28/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Choose;
@interface Start : UIViewController <UIAlertViewDelegate> 
									{
										Choose *chooseviewcontroller;
										NSMutableArray *bob;
										int state;
										NSMutableArray *savedinfo2;
										int practice;
										int startnumofquestions;

					}
-(void)state;
-(void)statetobereturned:(NSArray *)buttoninfo;
-(void)save;
-(BOOL)shouldAutorotate;
- (IBAction)Easy;
-(IBAction)highscore;
- (IBAction)Hard;
- (IBAction)Medium;
- (IBAction)Hard2;
-(IBAction)rateit;
-(void)fun;
-(void)rate;
@property int startnumofquestions;
@property int practice;
@property (nonatomic, retain) NSMutableArray *savedinfo2;
@property (nonatomic, retain ) NSMutableArray *bob;
@property (nonatomic, retain ) IBOutlet Choose *chooseviewcontroller;
@end
