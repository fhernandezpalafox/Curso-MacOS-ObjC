//
//  CustomCollectionView.m
//  Componentes02
//
//  Created by Felipe Hernandez on 24/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "CustomCollectionView.h"

@implementation CustomCollectionView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [self setTitle:@"NSCollectionView"];
    
    
    //cargar el contenido del collectionview
    self.collectionviewitem = [userCollectionView new];
    
    
    self.contenido = @[
                       @{@"itemtitulo":@"Producto 1",
                         @"itemdescripcion":@"Esto es una descripcion"},
                       @{ @"itemtitulo":@"Producto 2",
                         @"itemdescripcion":@"Esto es una descripcion"},
                       @{  @"itemtitulo":@"Producto 3",
                         @"itemdescripcion":@"Esto es una descripcion"},
                       @{ @"itemtitulo":@"Producto 4",
                         @"itemdescripcion":@"Esto es una descripcion"}
                       ];
    
    [self.ColeccionView setItemPrototype:self.collectionviewitem];
    [self.ColeccionView setContent:self.contenido];
    
}

@end
