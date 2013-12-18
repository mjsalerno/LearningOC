//
//  main.m
//  LearningOC
//
//  Created by John Smith on 12/18/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *frac = [Fraction new];
        [frac setNumerator:(10)];
        [frac setDenominator:(5)];
        
        [frac setVals:15 :5];
        
        [frac print];
        
    }
    return 0;
}

