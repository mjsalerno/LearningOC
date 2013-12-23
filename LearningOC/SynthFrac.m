//
//  SynthFrac.m
//  LearningOC
//
//  Created by John Smith on 12/20/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

#import "SynthFrac.h"

@implementation SynthFrac

@synthesize numerator, denominator;

-(void) print {
    NSLog (@"%i/%i", numerator, denominator);
}

-(double) ToNum {
    
    if (denominator != 0) {
        return (double) numerator / denominator;
        
    } else {
        return NAN;
    }
}

-(void) setFrac: (int)top over:(int)bot {
    self.numerator = top;
    self.denominator = bot;
}

// A     C     AD + CB
//--- + --- = ---------
// B     D        BD
-(void) add: (SynthFrac *) frac {
    int top, bot;
    
    if(self.denominator == frac.denominator) {
        bot = self.denominator;
        top = (self.numerator + frac.numerator);
    } else {
        bot = self.denominator * frac.denominator;
        top = (self.numerator * frac.denominator) + (frac.numerator * self.denominator);
    }
    
    self.numerator = top;
    self.denominator = bot;
}


@end
