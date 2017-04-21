//
//  ViewController.m
//  AppEjercicio19
//
//  Created by Felipe Hernandez on 23/12/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.collectionviewitem = [PersonaCollectionViewItem new];
    
    self.contenido = @[
                       @{@"itemNombre":@"Felipe",
                         @"itemDescripcion":@"Descripcion 1"},
                       @{ @"itemNombre":@"Juan",
                          @"itemDescripcion":@"Descripcion 2"},
                       @{  @"itemNombre":@"Pedro",
                           @"itemDescripcion":@"Descripcion 3"},
                       @{ @"itemNombre":@"Tomas",
                          @"itemDescripcion":@"Descripcion 4"}
                       ];

    
    [self.CollectionViewPerson setItemPrototype:self.collectionviewitem];
    [self.CollectionViewPerson setContent:self.contenido];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
