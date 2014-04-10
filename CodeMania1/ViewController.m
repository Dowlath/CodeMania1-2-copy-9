//
//  ViewController.m
//  CodeMania1
//
//  Created by BSA univ 1 on 18/03/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize plistobj,buttonsArray,distance;

- (void)viewDidLoad
{
    plistobj = [[PlistManager alloc]init];
    _lobj = [[LevelViewController alloc]init];
    buttonsArray = [plistobj ReadAppPlist];
    NSLog(@"!!!buttonarray %@",buttonsArray);
    int x =50;
    int y=100;
    for (int i=0; i<buttonsArray.count; i++)
    {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        [button addTarget:self
                   action:@selector(aMethod:)
         forControlEvents:UIControlEventTouchDown];
        // [button setTitle:@"Show View" forState:UIControlStateNormal];
        [button setTitle:[buttonsArray objectAtIndex:i] forState:UIControlStateNormal];
        button.frame = CGRectMake(x, y, 160.0, 40.0);
        [self.view addSubview:button];
        y = y +100;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)aMethod:(UIButton*)button
{
    distance = button.currentTitle;
    NSLog(@"%@",distance);
    
    
    
    NSLog(@"Button  clicked.");
    
    
    _lobj = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"LevelViewController"];
    [_lobj setSendingdistancelevalview:distance];
    
    
    [self presentViewController:_lobj animated:NO completion:^void{}];
    
    //TODO 1: Get button text
    //TODO 2: load new view controller passing new object with value 5K
}

@end
