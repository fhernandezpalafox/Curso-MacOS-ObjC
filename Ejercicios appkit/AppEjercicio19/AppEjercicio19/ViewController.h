//
//  ViewController.h
//  AppEjercicio19
//
//  Created by Felipe Hernandez on 23/12/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PersonaCollectionViewItem.h"

@interface ViewController : NSViewController
@property (strong) NSArray *contenido;
@property (strong) PersonaCollectionViewItem *collectionviewitem;
@property (weak) IBOutlet NSCollectionView *CollectionViewPerson;

@end

