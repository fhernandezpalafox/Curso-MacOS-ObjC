//
//  Fraction5.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 29/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Fraction5.h"

@implementation  Fraction5

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
