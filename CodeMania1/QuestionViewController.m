//
//  QuestionViewController.m
//  CodeMania1
//
//  Created by BSA univ 1 on 18/03/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import "QuestionViewController.h"

@interface QuestionViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation QuestionViewController

@synthesize plistobj,buttonsArray,qn,levelObj;


//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    plistobj = [[PlistManager alloc]init];
    levelObj=[[LevelViewController alloc]init];
    
    buttonsArray=[plistobj AppPlistWeek:_qn1 :_qn2];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [buttonsArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Cell1";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [buttonsArray objectAtIndex:indexPath.row];
    
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//   _plobj.celltext= cell.textLabel.text;
    
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
   qn = [buttonsArray objectAtIndex:indexPath.row] ;
    
    
   _plobj = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"ViewViewController"];
//    //
//    //
     [_plobj setQn:_qn1];
    [_plobj setComplixity:_qn2];
      [_plobj setCaste:qn];
//    //
//    //
//    //
//    
       [self presentViewController:_plobj animated:NO completion:^void{}];
    //1
//   ViewViewController* detailController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewViewController"];
////    //3
//   detailController=[buttonsArray objectAtIndex:indexPath.row];
////    //2
//   NSLog(@"ee%@",[buttonsArray objectAtIndex:indexPath.row]) ;
//   
//   
//   [self presentViewController:detailController animated:YES completion:nil];
//    //qn = button.currentTitle;
//   NSLog(@"refsads%@",qn);
////    
////    NSLog(@"Button  clicked.");
//    _plobj = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"ViewViewController"];
////    
////    
//    //[_plobj setQn:_qn1];
//   // [_plobj setComplixity:_qn2];
//  // [_plobj setCaste:qn];
////    
//    
//    
//    
    //[self presentViewController:_plobj animated:NO completion:^void{}];
//    
//
//    
////
  
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backButon:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:nil];
}


@end
