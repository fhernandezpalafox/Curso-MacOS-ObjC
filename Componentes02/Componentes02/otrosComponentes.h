//
//  otrosComponentes.h
//  Componentes02
//
//  Created by Felipe Hernandez on 17/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface otrosComponentes : NSViewController
@property int numero;
@property NSColor *color;
@property (weak) IBOutlet NSTextField *txtSelecionado;
- (IBAction)Seleccionar:(id)sender;

@end
