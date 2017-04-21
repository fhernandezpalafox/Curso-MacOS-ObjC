//
//  ViewController.h
//  AFNetWorkingParte2
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTableViewDataSource>
{
    NSDictionary *datosJson;
}
@property (nonatomic, retain) NSMutableArray *Categorias;
@property (weak) IBOutlet NSTableView *Tabla;
@property (weak) IBOutlet NSProgressIndicator *progressIndicator;

-(void) CargaDatos;

-(void)MessageBox:(NSString *)Message andTitle:(NSString *)Title;

-(void) InicializarProgress;
-(void) FinalizarProgress;

- (IBAction)onEliminar:(id)sender;

@end

