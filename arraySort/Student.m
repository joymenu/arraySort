//
//  Student.m
//  arraySort
//
//  Created by bbu on 2/21/15.
//  Copyright (c) 2015 bbu. All rights reserved.
//

#import "Student.h"

@implementation Student
+(id)initStudentWithFirstname:(NSString *)firstname withLastname:(NSString *)lastname
{
    Student *stu = [[Student alloc] init];
    stu.lastname = lastname;
    stu.firstname = firstname;
    return stu;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"I am a studeng %@,%@",self.lastname,self.firstname];
}

-(NSComparisonResult)compareStudent:(Student *)stu
{
    NSComparisonResult result = [self.firstname compare:stu.firstname];
    if (result == NSOrderedSame) {
        result = [self.firstname compare:stu.firstname];
    }
    
    return result;
}
@end
