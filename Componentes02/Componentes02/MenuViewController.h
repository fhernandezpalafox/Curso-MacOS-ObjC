//
//  MenuViewController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 17/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MenuViewController : NSMenu
-(IBAction)Saludar:(id)sender;
-(IBAction)Despedir:(id)sender;
-(IBAction)LlamarVentana:(id)sender;
-(void)Alerta:(NSString *)titulo andMessage:(NSString *)Mensaje;
@end
