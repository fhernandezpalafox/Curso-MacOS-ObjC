//
//  PrincipalViewController.h
//  AppEjercicio15
//
//  Created by Felipe Hernandez on 14/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PrincipalViewController : NSViewController
@property NSString *usuario;
@property (weak) IBOutlet NSTextField *lblInformacion;
@end
