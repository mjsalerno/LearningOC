//
//  MyLib.m
//  LearningOC
//
//  Created by Mike Salerno on 12/27/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

#import "MyLib.h"
#import <objc/objc-class.h>
#import "BlockInjection/BILib.h"


@implementation MyLib

int generic_obj_c_intercept(NSString* class_name, NSString *concrete_class_name, NSString *method_name, NSObject* obj, int argc, __strong NSObject* argv[], uint32_t *returncode, uint32_t *reasoncode) {
    NSLog(@"objective c intercept");
    
    return 0;
}

int generic_obj_c_exit(NSString* class_name, NSString *concrete_class_name, NSString *method_name, NSObject* obj, int argc, __strong NSObject* argv[], uint32_t *returncode, uint32_t *reasoncode) {
    NSLog(@"objective c exit");
    
    return 0;
}

-(void) replacer {
    generic_obj_c_intercept(@"class", @"concrete_class_name", @"method_name", self, 0, NULL, 0, 0);
    NSLog(@"calling the replacer");
    generic_obj_c_exit(@"class", @"concrete_class_name", @"method_name", self, 0, NULL, 0, 0);
}

-(void) swizzleFunction: (SEL)func fromClass:(Class)c {
    
    SEL new = @selector(replacer);
    
    Method origMethod = class_getInstanceMethod(c, func);
    Method newMethod = class_getInstanceMethod(self.class, new);
    
    if(class_addMethod(c, func, method_getImplementation(newMethod), method_getTypeEncoding(newMethod)))
        class_replaceMethod(c, new, method_getImplementation(origMethod), method_getTypeEncoding(origMethod));
    else
        method_exchangeImplementations(origMethod, newMethod);

    
    
}

-(void) swizzle2Function: (SEL)func fromClass:(Class)c {

    //hook before
    [BILib injectToClass:c selector:func preprocess:^{
        
        NSLog(@"this should be called before");
        
    }];
    
    //hook after
    [BILib injectToClass:c selector:func postprocess:^{
        
        NSLog(@"This should be called after");
        
    }];

}

@end
