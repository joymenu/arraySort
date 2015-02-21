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
    
    Student *stu1 = [Student initStudentWithFirstname:@"a" withLastname:@"b"];
    Student *stu2 = [Student initStudentWithFirstname:@"c" withLastname:@"d"];
    Student *stu3 = [Student initStudentWithFirstname:@"e" withLastname:@"f"];
    
    NSArray *array = [NSArray arrayWithObjects:stu1,stu2,stu3, nil];
    
    NSArray *sortArray = [array sortedArrayUsingSelector:@selector(compareStudent:)];
    
    NSLog(@"%@",sortArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
