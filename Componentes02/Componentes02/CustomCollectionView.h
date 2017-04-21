//
//  CustomCollectionView.h
//  Componentes02
//
//  Created by Felipe Hernandez on 24/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "userCollectionView.h"

@interface CustomCollectionView : NSViewController
@property (weak) IBOutlet NSCollectionView *ColeccionView;
@property (strong) NSArray *contenido;
@property (strong) userCollectionView *collectionviewitem;
@end
