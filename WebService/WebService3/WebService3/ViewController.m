//
//  ViewController.m
//  WebService3
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    [_progressIndicator setHidden:YES];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)onConvertir:(id)sender {
    
    [self InicializarProgress];

    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    //Entradas y salidas
    manager.responseSerializer = [AFXMLParserResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/xml"];
    
    NSDictionary *parameters = @{@"Celsius": _txtDato.stringValue};
    
    [manager POST:@"https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit" parameters:parameters progress:nil
          success:^(NSURLSessionTask *task, id responseObject)
     {
         
         NSLog(@"XML: %@", responseObject);
         
         NSXMLParser *xmlParser = [[NSXMLParser alloc] init];
         
         xmlParser  = responseObject;
         
         //setting delegate of XML parser to self
         xmlParser.delegate = self;
         
         // Run the parser
         @try{
             BOOL parsingResult = [xmlParser parse];
             NSLog(@"Resultado del parseo = %hhd",parsingResult);
         }
         @catch (NSException* exception)
         {
             NSLog(@"%@",exception.reason);
             return;
         }
         
     } failure:^(NSURLSessionTask *operation, NSError *error) {
         NSLog(@"Error: %@", error);
         [self FinalizarProgress];
         
     }];
}


//Implement the NSXmlParserDelegate methods
-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName: (NSString *)qName attributes:(NSDictionary *)attributeDict
{
    _currentElement = elementName;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if ([_currentElement isEqualToString:@"string"]) {
        NSLog(@"%@",string);
        [_lblInformacion setStringValue:string];
        [self FinalizarProgress];
    }
    
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    NSLog(@"Elemento parseado : %@", _currentElement);
}


-(void) InicializarProgress{
    
    [_progressIndicator setHidden:NO];
    [_progressIndicator setIndeterminate:YES];
    [_progressIndicator setUsesThreadedAnimation:YES];
    [_progressIndicator startAnimation:nil];
}

-(void) FinalizarProgress{
    [_progressIndicator stopAnimation:nil];
    [_progressIndicator setHidden:YES];
}
@end
