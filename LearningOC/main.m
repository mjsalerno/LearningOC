//
//  main.m
//  LearningOC
//
//  Created by John Smith on 12/18/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "SynthFrac.h"
#import "Vehicle.h"
#import "Car.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *frac = [Fraction new];
        [frac setNumerator:(10)];
        [frac setDenominator:(5)];
        
        [frac setVals:15 :5];
        
        [frac print];
        
//        printf("How many time would you like me to print? ");
//        int loop = 0;
//        scanf("%i", &loop);
//        
//        for(loop--; loop >= 0; --loop) {
//            printf("loops left: %d\n", loop);
//        }
        
        //this is bad
        //NSLog("frac with log: %i/%i", [frac numerator], [frac denominator]);
        
        SynthFrac *sf = [SynthFrac new];
//        [sf setNumerator:2];
//        [sf setDenominator:3];
        
        [sf setFrac:5 over:3];
        [sf print];
        
        SynthFrac *sf1 = [[SynthFrac alloc] init:2 over:5];
        SynthFrac *sf2 = [SynthFrac new];
        

        
        [sf1 setFrac:2 over:5];
        [sf2 setFrac:3 over:5];
        
        [sf1 add:sf2];
        
        NSLog(@"this was sf: %f", [sf1 ToNum]);
        NSLog(@"%i/%i", sf1.numerator, sf1.denominator);
        
        Vehicle *v = [Vehicle new];
        v.numOfCylinders = 6;
        
        Car *c = [Car new];
        c.numWheels = 4;
        c.numOfCylinders = 4;
        
        NSLog(@"bool: %d", [c isKindOfClass:[Vehicle class]]);

        //----------------------------STUFF WITHOUT A MAC------------------------------
        
        
        
    }
    return 0;
}

