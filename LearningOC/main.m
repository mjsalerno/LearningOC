//
//  main.m
//  LearningOC
//
//  Created by John Smith on 12/18/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

/* NOTES
block ------------> anonymous function
protocol ---------> interface
conformsTo -------> implements
composite object -> encapsulate
*/

#import <Foundation/Foundation.h>
#import <objc/objc-class.h>
#import "Fraction.h"
#import "SynthFrac.h"
#import "Vehicle.h"
#import "Car.h"
#import "SynthFrac+MathOps.h"
#import "ReplaceMe.h"
#import "MyLib.h"

#define FIVE 5

//global var can be used in other files
int gGlobalVar = -1;
//use 
//extern int gGlobalVar;
//to use it in another file

//can't be used in other files
static int gNotSoGlobalVar = -1;

void cFunc() {
    printf("howdy, imma c function\n");
}

void notIt() {
    printf("his is not he one you wanted\n");
}

void Swizzle(Class c, SEL orig, SEL new) {
    
    Method origMethod = class_getInstanceMethod(c, orig);
    Method newMethod = class_getInstanceMethod(c, new);
    
    if(class_addMethod(c, orig, method_getImplementation(newMethod), method_getTypeEncoding(newMethod)))
        class_replaceMethod(c, new, method_getImplementation(origMethod), method_getTypeEncoding(origMethod));
    else
        method_exchangeImplementations(origMethod, newMethod);
}

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        gNotSoGlobalVar = 7;
        
        Fraction *frac1 = [Fraction new];
        [frac1 setNumerator:(10)];
        [frac1 setDenominator:(FIVE)];
        
        [frac1 setVals:15 :FIVE];
        
        [frac1 print];

        Fraction *frac2 = [Fraction new];
        [frac2 setVals:15 :FIVE];
        
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
        c.numOfCylinders =4;
        
        NSLog(@"bool: %d", [c isKindOfClass:[Vehicle class]]);        
        
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

        if(RED == 5) {
            NSLog (@"RED == 5 was true");   
        }

        //switch statement with enums
        switch(g) {
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

        //testing typdef
        typedef int Counter;
        Counter n;
        n = 0;
        n++;
        NSLog(@"this is the typdef n: %i", n);

        //typedef to make enums easy
        typedef enum { east, west, south, north } Direction;
        Direction step1;
        step1 = west;

        //trying the new added methods
        SynthFrac *fromMult = [sf1 mul: sf2];
        [sf1 print]; NSLog (@"  *"); [sf2 print]; NSLog (@"-----");
        [fromMult print];

        //block testing
        void (^printMessage)(void) =
            ^(void) {
                NSLog (@"Programming is fun, but not in Objective C.");
            };

        printMessage ();
        
        NSDate *start = [NSDate date];
        [sf1 wasteTime:9999999];
        NSDate *methodFinish = [NSDate date];
        NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:start];
        
        NSLog(@"Execution Time: %f", executionTime);
        
        //cFunc();
        //Swizzle([, cFunc, notIt);
        //cFunc();
        
        ReplaceMe *rm = [ReplaceMe new];
        //ReplaceMe *rm2 = [ReplaceMe new];
        
        MyLib *myLib = [MyLib new];
        
        [rm replaceMe:6];
        //Swizzle([ReplaceMe class], @selector(replaceMe), @selector(withMe));
        [myLib swizzle2Function:@selector(replaceMe:) fromClass:rm.class];
        [rm replaceMe:6];
        
        
    }
    return 0;
}


