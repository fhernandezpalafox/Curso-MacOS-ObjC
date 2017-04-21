//
//  Persona+CoreDataProperties.h
//  CoreDataExample
//
//  Created by Felipe Hernandez on 17/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
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
