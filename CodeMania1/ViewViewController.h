//
//  ViewViewController.h
//  CodeMania1
//
//  Created by BSA univ 1 on 18/03/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlistManager.h"
#import "ViewController.h"
#import "QuestionViewController.h"
@class PlistManager;
@class ViewViewController;
@class QuestionViewController;
@interface ViewViewController : UIViewController
- (IBAction)done:(id)sender;
- (IBAction)next:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableview;
-(NSArray *)AppPlistWeekone:(NSString *)distance :(NSString *) complixity :(NSString*) weeks;
@property (nonatomic,strong) NSString *qn;
@property (nonatomic,strong) NSMutableArray *itsToDoChecked;
@property (nonatomic,strong) NSString *a;
@property (nonatomic,strong) NSString *complixity;
@property (nonatomic,strong) NSString *caste;
@property (nonatomic,strong) PlistManager *plistobj;
@property (nonatomic,strong) NSMutableArray *buttonsArray;
@property (nonatomic, retain) NSArray *rootOfPlist;
@property (nonatomic, retain) NSString *celltext;
@property (nonatomic, retain) NSString *current;




@end
