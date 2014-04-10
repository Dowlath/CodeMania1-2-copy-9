//
//  PlistManager.h
//  CodeMania1
//
//  Created by BSA univ 1 on 18/03/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "LevelViewController.h"
#import "ViewViewController.h"
@class ViewController;

@interface PlistManager : NSObject
@property (nonatomic,strong) ViewController *obj;
@property (nonatomic,strong) LevelViewController *levelObj;
@property (nonatomic,strong) ViewViewController *view;
@property(nonatomic, strong) NSString * plistPath;
@property (nonatomic,strong) NSArray *fullData;
-(NSArray *)ReadAppPlist;
-(NSArray *)AppPlist:(NSString *)category;
-(NSArray *)AppPlistWeek:(NSString *)category :(NSString *) weeks;
-(NSArray *)AppPlistWeekone:(NSString *)category :(NSString*) weeks :(NSString *)question;
-(NSArray *)AppPlistWeekone:(NSString *)distance :(NSString *) complixity :(NSString*) weeks;
-(NSArray *)AppPlistWeekone:(NSString *)distance :(NSString *) complixity :(NSString*) weeks :(NSString *)question;


//-(void)AppPlist :(NSString *)str1;
@end
