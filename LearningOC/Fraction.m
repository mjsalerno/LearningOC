//
//  Fraction.m
//  LearningOC
//
//  Created by John Smith on 12/18/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction {
    int numerator;
    int denominator;
}

-(void) print {
    NSLog (@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n {
    numerator = n;
}

-(void) setDenominator: (int) d {
    denominator = d;
}

-(void) setVals: (int) numer :(int) denom {
    denominator = denom;
    numerator = numer;
}

@end
