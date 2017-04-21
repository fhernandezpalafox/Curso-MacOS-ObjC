//
//  Fraction17.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 30/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Fraction17.h"

@implementation  Fraction17
//declaracion de los get and set
@synthesize numerator,denominator;

-(void) print
{
    NSLog(@" %i/%i",numerator,denominator);
}

-(double) convertToNum
{
    if(denominator != 0)
    {
        return (double) numerator/denominator;
    } else
    {
        return  NAN;
    }
}

-(void) setTo:(int) n  over:(int) d
{
    numerator   = n;
    denominator = d;
}

@end


