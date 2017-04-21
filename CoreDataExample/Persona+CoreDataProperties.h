//
//  Persona+CoreDataProperties.h
//  CoreDataExample
//
//  Created by Felipe Hernandez on 04/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Persona+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Persona (CoreDataProperties)

+ (NSFetchRequest<Persona *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *domicilio;
@property (nonatomic) int32_t edad;
@property (nullable, nonatomic, copy) NSString *estadoCivil;
@property (nullable, nonatomic, copy) NSString *nombre;

@end

NS_ASSUME_NONNULL_END
