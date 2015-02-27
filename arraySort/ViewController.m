//
//  ViewController.m
//  arraySort
//
//  Created by bbu on 2/21/15.
//  Copyright (c) 2015 bbu. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.layer.borderWidth = 1;
    btn.layer.borderColor = [UIColor grayColor].CGColor;
    btn.translatesAutoresizingMaskIntoConstraints = NO;
    [btn setTitle:@"双色球" forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(todayExtension:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *dltBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    dltBtn.layer.borderWidth = 1;
    dltBtn.layer.borderColor = [UIColor grayColor].CGColor;
    dltBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [dltBtn setTitle:@"大乐透" forState:UIControlStateNormal];
//    [dltBtn addTarget:self action:@selector(todayExtension:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    [self.view addSubview:dltBtn];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|[btn(dltBtn)]-10-[dltBtn]|"
                               options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom
                               metrics:nil
                               views:@{@"btn":btn,@"dltBtn":dltBtn}]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|-5-[btn(height)]|"
                               options:0
                               metrics:@{@"height":@30}
                               views:@{@"btn":btn}]];
    
//    Student *stu1 = [Student initStudentWithFirstname:@"a" withLastname:@"b"];
//    Student *stu2 = [Student initStudentWithFirstname:@"c" withLastname:@"d"];
//    Student *stu3 = [Student initStudentWithFirstname:@"e" withLastname:@"f"];
//    
//    NSArray *array = [NSArray arrayWithObjects:stu1,stu2,stu3, nil];
//    
//    NSArray *sortArray = [array sortedArrayUsingSelector:@selector(compareStudent:)];
//    
//    NSLog(@"%@",sortArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
