//
//  ViewViewController.m
//  CodeMania1
//
//  Created by BSA univ 1 on 18/03/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import "ViewViewController.h"
#import "M13Checkbox.h"
#import "QuestionViewController.h"

@interface ViewViewController ()<UITableViewDataSource,UITableViewDelegate>
{
   // int index=[indexPath.length];
    BOOL loaded;
    BOOL check;
    M13Checkbox *customFrame1 ;
    NSArray *third;

}

@property QuestionViewController *quesobj;
@property int s;
@property int qno;
@property (nonatomic,strong) NSString * answer;
@property (nonatomic,strong)NSNumber *ans1;

@end

@implementation ViewViewController
@synthesize answer;
@synthesize qn,complixity,caste,buttonsArray,rootOfPlist,celltext,itsToDoChecked,current,quesobj,qno
;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}


- (void)viewDidLoad
{
    
    _plistobj = [[PlistManager alloc]init];
    quesobj=[[QuestionViewController alloc]init];
    
    NSLog(@"question %@",qn);
     NSLog(@"complixity %@",complixity);
    NSLog(@"level %@",caste);
    buttonsArray=[[NSMutableArray alloc]init];
    _s=0;
    qno=2;
    [self firstStart];
    check=NO;
    NSLog(@"%@",[buttonsArray description]);
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)firstStart{
    
    if(_s==0){
        buttonsArray=[_plistobj AppPlistWeekone:qn:complixity:caste];
    }
    else
    {
        //NSString * ques=@"Question ";
        
        NSString *qusetion=[NSString stringWithFormat:@"Question %d",qno];
        buttonsArray=[_plistobj AppPlistWeekone:qn:complixity:qusetion];
        NSLog(@"___---> %@",qusetion);
        qno++;
        [self.tableview reloadData];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
        return [buttonsArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    static NSString *simpleTableIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = [buttonsArray objectAtIndex:indexPath.row];
        cell.textLabel.font = [UIFont systemFontOfSize:14.0];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    M13Checkbox *allDefaults = [[M13Checkbox alloc] init];
    M13Checkbox *customFrame1 = [[M13Checkbox alloc] initWithFrame:CGRectMake(260,10,30,30)];
    [cell addSubview:customFrame1];
    [customFrame1 addTarget:self action:@selector(Comparethevalues:) forControlEvents:UIControlEventValueChanged];
    if(indexPath.row==0)
    {
        [customFrame1 setHidden:YES];
    }
    
        return cell;
}



-(void) checkButton

{
    M13Checkbox *allDefaults = [[M13Checkbox alloc] init];
    M13Checkbox *customFrame1 = [[M13Checkbox alloc] initWithFrame:CGRectMake(260,80,30,30)];
    [self.view addSubview:customFrame1];

    
}
-(void)Comparethevalues:(id)sender
{
    NSIndexPath *indexPath = [self.tableview indexPathForCell:(UITableViewCell *)[[sender superview] superview]];
    if(indexPath.row==check)
    {
        NSLog(@"XXX ",M13CheckboxStateChecked );    }
    else
    {
        NSLog(@"XXX ",M13CheckboxStateUnchecked);
    }
    
        //_ans1=[NSNumber numberWithLong:indexPath.row];
answer=[NSString stringWithFormat:@"%ld",(long)indexPath.row];
    NSLog(@"xxxxxx %d",indexPath.row);
    if(indexPath.row==2)
    {
        NSLog(@"Correct ans",indexPath.row);
        
    }
    else
    {
        NSLog(@"WRONG ans",indexPath.row);
    }
    


}
- (IBAction)done:(id)sender {
 NSLog(@"result= %@",answer);
       
}

- (IBAction)next:(id)sender {
    ViewViewController *obj;
    
    
    NSLog(@"%@",[buttonsArray description]);
    _s=1;
    [self firstStart];
    
    //-(NSArray *)AppPlistWeekone:(NSString *)distance :(NSString *) complixity :(NSString*) weeks


//    NSInteger newLast = [third indexAtPosition:index-1]+1;
//    
//    
//   indexPath = [[third indexPathByRemovingLastIndex] indexPathByAddingIndex:newLast];

}



- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    }
//-(void)setChecked:(BOOL)boolValue {
//    _checked = boolValue;
//    [self setNeedsDisplay];
//}
//
//-(void)setDisabled:(BOOL)boolValue {
//    _disabled = boolValue;
//    [self setNeedsDisplay];
//}


-(void)saveChecklist
{
}
- (IBAction)backButon:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
