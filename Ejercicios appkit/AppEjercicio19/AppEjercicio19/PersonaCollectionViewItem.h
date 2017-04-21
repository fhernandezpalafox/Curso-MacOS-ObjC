//
//  PersonaCollectionViewItem.h
//  AppEjercicio19
//
//  Created by Felipe Hernandez on 23/12/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PersonaCollectionViewItem : NSCollectionViewItem
@property (weak) IBOutlet NSTextField *lblNombre;
@property (weak) IBOutlet NSTextField *lblDescripcion;
- (IBAction)Presioname:(id)sender;

@end
