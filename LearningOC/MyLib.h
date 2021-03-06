//
//  MyLib.h
//  LearningOC
//
//  Created by Mike Salerno on 12/27/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyLib : NSObject

int generic_c_intercept(NSString *func_name, int argc, void** argv, uint32_t *returncode, uint32_t *reasoncode);

int generic_c_exit(NSString *func_name, int argc, void** argv, uint32_t *returncode, uint32_t *reasoncode);

int generic_obj_c_intercept(NSString* class_name, NSString *concrete_class_name, NSString *method_name, NSObject* obj, int argc, __strong NSObject* argv[], uint32_t *returncode, uint32_t *reasoncode);

int generic_obj_c_exit(NSString* class_name, NSString *concrete_class_name, NSString *method_name, NSObject* obj, int argc, __strong NSObject* argv[], uint32_t *returncode, uint32_t *reasoncode);

-(void) swizzleFunction: (SEL)func fromClass:(Class)c;

-(void) swizzle2Function: (SEL)func fromClass:(Class)c;


@end
