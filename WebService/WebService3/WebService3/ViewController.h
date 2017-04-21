//
//  ViewController.h
//  WebService3
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSXMLParserDelegate>

@property NSString *currentElement;
@property (weak) IBOutlet NSTextField *txtDato;
- (IBAction)onConvertir:(id)sender;
@property (weak) IBOutlet NSTextField *lblInformacion;
@property (weak) IBOutlet NSProgressIndicator *progressIndicator;


-(void) InicializarProgress;
-(void) FinalizarProgress;

@end

