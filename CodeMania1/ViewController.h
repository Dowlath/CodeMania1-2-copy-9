//
//  ViewController.h
//  CodeMania1
//
//  Created by BSA univ 1 on 18/03/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlistManager.h"
#import "LevelViewController.h"

@class PlistManager;
@class LevelViewController;
@class weeksViewController;

@interface ViewController : UIViewController

@property (nonatomic,strong) PlistManager *plistobj;
@property (nonatomic,strong)NSArray *buttonsArray;
@property (nonatomic,strong)NSArray *beginnerArray;

@property (nonatomic,strong) NSString *distance;
@property (nonatomic,strong) LevelViewController *lobj;
@end
