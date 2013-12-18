//
//  Fraction.h
//  LearningOC
//
//  Created by John Smith on 12/18/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

    -(void) print;
    -(void) setNumerator: (int) n;
    -(void) setDenominator: (int) d;
    -(void) setVals: (int) numer :(int) denom;

@end
