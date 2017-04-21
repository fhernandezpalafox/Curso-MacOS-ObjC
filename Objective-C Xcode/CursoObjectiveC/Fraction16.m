//
//  Fraction16.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 30/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Fraction16.h"

@implementation  Fraction16

-(void) print
{
    NSLog(@" %i/%i",numerator,denominator);
}
-(void) setNumerator:(int) n
{
    numerator  = n;
}
-(void) setDenominator:(int) d
{
    denominator  = d;
}

@end


