//
//  PlistManager.m
//  CodeMania1
//
//  Created by BSA univ 1 on 18/03/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import "PlistManager.h"
#import"ViewController.h"
#import "LevelViewController.h"
#import "ViewViewController.h"

@implementation PlistManager
@synthesize plistPath,fullData;

-(NSArray *)ReadAppPlist
{
    _obj = [[ViewController alloc]init];
    
    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    
    fullData = [propertyDict allKeys];
    NSSortDescriptor *des=[NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES selector:@selector(localizedStandardCompare:)];
    fullData= [fullData sortedArrayUsingDescriptors:@[des]];
    
    // NSLog(@"%@",fullData);
    return fullData;
}

-(NSArray *)AppPlist:(NSString *)category
{
    _obj = [[ViewController alloc]init];
    
    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    NSDictionary *first = (NSDictionary *)[propertyDict objectForKey:category];
    
    NSArray *levels= [first allKeys];
    
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES selector:@selector(localizedStandardCompare:)];
    
    levels = [levels sortedArrayUsingDescriptors:@[descriptor]];

  
    NSLog(@"%@",levels);
    
    // NSLog(@"%@",fullData);
    return levels;
}

-(NSArray *)AppPlistWeek:(NSString *)category :(NSString *)weeks
{
    _levelObj = [[LevelViewController alloc]init];
    
    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    NSDictionary *first = (NSDictionary *)[propertyDict objectForKey:category];
    NSDictionary *second=[first objectForKey:weeks];
    
    
    NSArray *levels2=[second allKeys];
     NSSortDescriptor *descriptor= [NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES selector:@selector(localizedStandardCompare:)];
    levels2=[levels2 sortedArrayUsingDescriptors:@[descriptor]];
    NSLog(@"%@hello",levels2);


    // NSLog(@"%@",fullData);
   return levels2;
}

//-(NSArray *)AppPlistWeekone:(NSString *)category :(NSString*) weeks :(NSString *)question
//{
//    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
//    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
//    NSDictionary *first = (NSDictionary *)[propertyDict objectForKey:category];
//    NSDictionary *second=[first objectForKey:weeks];
//    
//    
//    NSArray *levels2=[second allKeys];
//    NSArray *third=[second objectForKey:weeks];
//    NSLog(@"final%@",third);
//
//    //NSArray *third=[second objectForKey:weeks];
//   // NSLog(@"%@ %@ %@",category,weeks);
//
//
//    return third;
//    
//}
//
-(NSArray *)AppPlistWeekone:(NSString *)distance :(NSString *) complixity :(NSString *) weeks
{
   _view=[[ViewViewController alloc]init];
   
   plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
//    
//     //NSDictionary *first = (NSDictionary *)[propertyDict objectForKey:category];
//  
//    
   NSDictionary *first=(NSDictionary *)[propertyDict objectForKey:distance];
//    
    NSDictionary *second=[first objectForKey:complixity];
   NSArray *third=[second objectForKey:weeks];
      NSLog(@"%@ %@ %@",distance,complixity,weeks);
    NSLog(@"final%@",third);
   // NSString *fourth=[second objectAtIndex:1];
//    //  NSArray *weekDetails=[third copy];
//    
   return third;
    //return fourth;

    
}
//-(NSArray *)AppPlistWeekone:(NSString *)distance :(NSString *)complixity :(NSString *)weeks :(NSString *)question
//{
//    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
//    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
//    
//    
//    NSLog(@"%@ %@ %@",distance,complixity,weeks);
//    
//    NSDictionary *first=(NSDictionary *)[propertyDict objectForKey:distance];
//    
//    
//    NSDictionary *second=[first objectForKey:complixity];
//    NSArray *third=[second objectForKey:weeks];
//    
//    //NSArray *four=[third]
//    NSLog(@"final%@",third);
//    //  NSArray *weekDetails=[third copy];
//    
//    return third;
//    
//    



@end
