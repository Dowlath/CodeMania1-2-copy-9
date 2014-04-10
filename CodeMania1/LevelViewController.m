//
//  LevelViewController.m
//  CodeMania1
//
//  Created by BSA univ 1 on 18/03/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import "LevelViewController.h"

@interface LevelViewController ()

@end

@implementation LevelViewController
@synthesize plistobj,buttonsArray,current,sendingdistancelevalview,complixity;



- (void)viewDidLoad

{
    
    
    
    plistobj = [[PlistManager alloc]init];
    _wobj = [[QuestionViewController alloc]init];
    buttonsArray = [plistobj AppPlist:sendingdistancelevalview];
    NSLog(@"%@  distanc=",sendingdistancelevalview);
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
    //    current = button.currentTitle;
    //    NSLog(@"%@",current);
    complixity= button.currentTitle;
    NSLog(@" Complex %@",complixity);
    
    
    NSLog(@"Button  clicked.");
    
    _wobj = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"QuestionViewController"];
    
    [_wobj setQn1:sendingdistancelevalview];
    
    
    [_wobj setQn2:complixity];
    
    
    
    
    
    [self presentViewController:_wobj animated:NO completion:^void{}];
    //TODO 1: Get button text
    //TODO 2: load new view controller passing new object with value 5K
}
- (IBAction)backButon:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:nil];
}




@end
