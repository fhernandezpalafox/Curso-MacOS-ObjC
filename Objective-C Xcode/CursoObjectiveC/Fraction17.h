//
//  Fraction17.h
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 30/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface  Fraction17: NSObject
//declaracion de las propiedades
@property int numerator,denominator;
//declaracion de los metodos
-(void)   print;
-(void)   setTo:(int) n  over:(int) d;
-(double) convertToNum;

@end

