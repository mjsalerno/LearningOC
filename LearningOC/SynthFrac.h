//
//  SynthFrac.h
//  LearningOC
//
//  Created by John Smith on 12/20/13.
//  Copyright (c) 2013 John Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SynthFrac : NSObject

@property int numerator, denominator;

-(void) print;
-(double) ToNum;
-(void) setFrac: (int)top over:(int)bot;
-(void) add: (SynthFrac *) frac;
-(instancetype) init: (int)top over:(int)bot;

@end
