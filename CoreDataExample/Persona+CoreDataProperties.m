//
//  Persona+CoreDataProperties.m
//  CoreDataExample
//
//  Created by Felipe Hernandez on 04/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Persona+CoreDataProperties.h"

@implementation Persona (CoreDataProperties)

+ (NSFetchRequest<Persona *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Persona"];
}

@dynamic domicilio;
@dynamic edad;
@dynamic estadoCivil;
@dynamic nombre;

@end
