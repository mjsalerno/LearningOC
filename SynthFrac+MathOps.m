//
//  SynthFrac+MathOps.m
//  LearningOC
//
//  Created by John Smith on 12/26/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

#import "SynthFrac+MathOps.h"

@implementation SynthFrac (MathOps)
-(SynthFrac *) mul: (SynthFrac *) f {
    SynthFrac  *result = [[SynthFrac alloc] init];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    //[result reduce];
    
    return result;
}
@end
