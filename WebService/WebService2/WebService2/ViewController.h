//
//  ViewController.h
//  WebService2
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSURLSessionDataDelegate,NSXMLParserDelegate>

@property NSMutableData *webResponseData;
@property NSString *currentElement;
- (IBAction)onConvertir:(id)sender;
@property (weak) IBOutlet NSTextField *txtDato;
@property (weak) IBOutlet NSTextField *lblInformacion;
@property (weak) IBOutlet NSProgressIndicator *progressIndicator;

- (BOOL)callWebService;

-(void) InicializarProgress;
-(void) FinalizarProgress;

@end

