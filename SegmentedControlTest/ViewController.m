//
//  ViewController.m
//  SegmentedControlTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 steve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{

    UISegmentedControl *segment;
}

- (IBAction)chooseNumber:(id)sender;




@end

@implementation ViewController

- (IBAction)handleSegmentedSelection:(id)sender{
    
    UISegmentedControl *control = (UISegmentedControl *)sender;
    
    NSString *selectedStr = [control titleForSegmentAtIndex:control.selectedSegmentIndex];
    
    NSLog(@"Index:%ld - Title:%@",control.selectedSegmentIndex,selectedStr);
    
    
}

-(void)handleBallSelection:(UISegmentedControl *)sender{
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            NSLog(@"야구!");
            break;
        case 1:
            NSLog(@"농구!");
            break;
        case 2:
            NSLog(@"축구!");
            break;
            
        case 3 :
            NSLog(@"배구!");
            break;
            
        default:
            break;
    }
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *baseball = [UIImage imageNamed:@"button_left.jpeg"];
    UIImage *basketball = [UIImage imageNamed:@"basketball.png"];
    UIImage *football = [UIImage imageNamed:@"football.jpeg"];
    UIImage *volleyball = [UIImage imageNamed:@"volleyball.jpeg"];
    
    NSArray *items = [NSArray arrayWithObjects:baseball,basketball,football,volleyball, nil];
    
 
    
    segment = [[UISegmentedControl alloc] initWithItems:items];
    
    segment.frame = CGRectMake(10, 100, 300, 40);
    
    [setImage:forSegmentAtIndex:];
    
    [segment setImage: forSegmentAtIndex:1];
    
    [self.view addSubview:segment];
    
    segment.selectedSegmentIndex = 2;
    
    [segment addTarget:self action:@selector(handleBallSelection:) forControlEvents:UIControlEventValueChanged];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chooseNumber:(id)sender {
}
@end
