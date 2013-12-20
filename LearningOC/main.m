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
        
        printf("How many time would you like me to print? ");
        int loop = 0;
        scanf("%i", &loop);
        
        for(loop--; loop >= 0; --loop) {
            printf("loops left: %d\n", loop);
        }
        
        //this is bad
        //NSLog("frac with log: %i/%i", [frac numerator], [frac denominator]);
        
    }
    return 0;
}

