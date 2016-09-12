//
//  Name.h
//  Muiltiplication App
//
//  Created by Sam Picus on 12/29/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Muilti, Muiltiplication_AppAppDelegate, record;
@interface Name : UIViewController
	<UITextFieldDelegate>						{
	IBOutlet UILabel *stats;
	IBOutlet Muilti *thing;
		
	IBOutlet UITextField *person;
	NSString *namedude;
	

}
-(void)start;
-(IBAction)enter;

@property (retain, nonatomic) NSString *namedude;
@property (retain, nonatomic) IBOutlet UITextField *person;
@property (retain, nonatomic) IBOutlet UILabel *stats;
@property (retain, nonatomic) IBOutlet Muilti *thing;

@end
