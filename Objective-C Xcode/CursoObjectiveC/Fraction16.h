//
//  Fraction16.h
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 30/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface  Fraction16: NSObject
{
    int numerator;
    int denominator;
}

-(void) print;
-(void) setNumerator:(int) n;
-(void) setDenominator:(int) d;

@end

