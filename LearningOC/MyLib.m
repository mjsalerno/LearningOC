//
//  MyLib.m
//  LearningOC
//
//  Created by Mike Salerno on 12/27/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

#import "MyLib.h"


@implementation MyLib

int generic_obj_c_intercept(NSString* class_name, NSString *concrete_class_name, NSString *method_name, NSObject* obj, int argc, __strong NSObject* argv[], uint32_t *returncode, uint32_t *reasoncode) {
    NSLog(@"objective c intercept");
    
    return 0;
}

int generic_obj_c_exit(NSString* class_name, NSString *concrete_class_name, NSString *method_name, NSObject* obj, int argc, __strong NSObject* argv[], uint32_t *returncode, uint32_t *reasoncode) {
    NSLog(@"objective c exit");
    
    return 0;
}

@end
