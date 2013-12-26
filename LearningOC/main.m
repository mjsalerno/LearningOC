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

//global var can be used in other files
int gGlobalVar = -1;
//use 
//extern int gGlobalVar;
//to use it in another file

//can't be used in other files
static int gNoSoGlobalVar;

int main(int argc, const char * argv[]) {

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
        
        //testing try catch
        NSArray *myArray = [NSArray array];

        @try {
            [myArray objectAtIndex: 2];
        }
        @catch (NSException *exception) {
            NSLog (@"Caught %@%@", exception.name, exception.reason);
        }

        NSLog (@"Execution continues");

        //testing out enums
        enum Color {RED = 5, GREEN = 10, BLUE = 15};

        enum Color b = BLUE;
        enum Color r = RED;
        enum Color g = GREEN;

        if(b == r) {
            NSLog (@"This is bad, b == r was true");   
        }

        if(b == BLUE) {
            NSLog (@"b == BLUE");
        }

        if(RED == RED) {
            NSLog (@"RED == RED was true");   
        }

        if(RED == 5) {
            NSLog (@"RED == 5 was true");   
        }

        //switch statement with enums
        switch(b) {
            case BLUE:
                NSLog (@"got BLUE from switch");
                break;
            case RED:
                NSLog (@"got RED from switch");
                break;
            case GREEN:
                NSLog (@"got GREEN from switch");
                break;
            default:
                NSLog (@"SOMETHING WENT WRONG WITH THE SWITCH");
                break;
        }
        
    }
    return 0;
}

