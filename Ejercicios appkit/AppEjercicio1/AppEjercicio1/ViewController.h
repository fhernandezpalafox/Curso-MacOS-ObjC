//
//  ViewController.h
//  AppEjercicio1
//
//  Created by Felipe Hernandez on 26/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextField *txtNum1;
@property (weak) IBOutlet NSTextField *txtNum2;
- (IBAction)Operacion:(id)sender;
@property (weak) IBOutlet NSTextField *lblResultado;

@end

