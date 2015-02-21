//
//  Student.h
//  arraySort
//
//  Created by bbu on 2/21/15.
//  Copyright (c) 2015 bbu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property(nonatomic,copy)   NSString *firstname;
@property(nonatomic,copy)   NSString *lastname;
+(id)initStudentWithFirstname:(NSString *)firstname withLastname:(NSString *)lastname;
-(NSComparisonResult)compareStudent:(Student *)stu;
@end
