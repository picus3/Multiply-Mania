//
//  Muiltiplication_AppAppDelegate.h
//  Muiltiplication App
//
//  Created by Sam Picus on 11/28/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>


@class Start, Muilti, record, Name, Choose;



@interface Muiltiplication_AppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	Start *viewController;
	Muilti *secondViewController;
	IBOutlet UIView *flipview;
	record *recordviewcontroller;
	NSMutableArray *bob;
	int state;
	NSArray *info;
	NSArray *savedinfo;
	NSArray *buttoninfo;
	NSMutableArray *numberstobeused;
	int practice;
	int delegatnumofquestions;
	int rateit;
}

-(void)returnstate:(NSDictionary *)statetobereturned;
-(void)menu;
-(void)record;
-(void)Flip:(int)diff:(BOOL)animate;
@property int practice;
@property int delegatnumofquestions;
@property (nonatomic, retain) NSMutableArray *numberstobeused;
@property (nonatomic, retain) NSArray *buttoninfo;
@property (nonatomic, retain) NSArray *savedinfo;
@property (nonatomic, retain) IBOutlet record *recordviewcontroller;
@property (nonatomic, retain) IBOutlet UIView *flipview;
@property (nonatomic, retain) IBOutlet Start *viewController;
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) Muilti *secondViewController;
@property (nonatomic, retain) NSMutableArray *bob;
@end

