//
//  PrincipalViewController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 31/12/15.
//  Copyright © 2015 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PrincipalViewController : NSViewController
@property NSString *usuario;
@property (weak) IBOutlet NSTextField *lblInformacion;

@end
