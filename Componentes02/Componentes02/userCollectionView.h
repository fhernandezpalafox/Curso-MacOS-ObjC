//
//  userCollectionView.h
//  Componentes02
//
//  Created by Felipe Hernandez on 24/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface userCollectionView : NSCollectionViewItem
@property (weak) IBOutlet NSTextField *lblTitulo;
@property (weak) IBOutlet NSTextField *lbldescripcion;
- (IBAction)precioname:(id)sender;

@end
