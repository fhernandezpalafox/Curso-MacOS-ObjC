//
//  ViewController.h
//  Webservice1
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSXMLParserDelegate>

@property (weak) IBOutlet NSTextField *txtDato;
- (IBAction)onConvertir:(id)sender;
@property (weak) IBOutlet NSTextField *lblinformacion;
@property (weak) IBOutlet NSProgressIndicator *progressIndicator;

@property NSString *soapMessage;
@property NSString *currentElement;
@property NSMutableData *webResponseData;


-(void) InicializarProgress;
-(void) FinalizarProgress;

@end

