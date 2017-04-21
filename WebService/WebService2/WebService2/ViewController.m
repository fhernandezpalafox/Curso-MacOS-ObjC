//
//  ViewController.m
//  WebService2
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [_progressIndicator setHidden:YES];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)onConvertir:(id)sender {
    
    [self callWebService];
}

- (BOOL)callWebService {

    [self InicializarProgress];

    NSString *soapMessage2 = [NSString stringWithFormat:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>"
                              "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">"
                              "<soap:Body>"
                              "<CelsiusToFahrenheit xmlns=\"https://www.w3schools.com/xml/\">"
                              "<Celsius>%@</Celsius>"
                              "</CelsiusToFahrenheit>"
                              "</soap:Body>"
                              "</soap:Envelope>",_txtDato.stringValue];
    
    NSURL *url = [NSURL URLWithString:@"https://www.w3schools.com/xml/tempconvert.asmx"];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    NSURLSession *session = [NSURLSession sharedSession];
    NSError *error;
    
    
    request.HTTPMethod = @"POST";
    request.HTTPBody = [soapMessage2 dataUsingEncoding:NSUTF8StringEncoding];

    [request addValue:@"www.w3schools.com" forHTTPHeaderField:@"Host"];
    [request addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [request addValue:[NSString stringWithFormat:@"%lu", (unsigned long)soapMessage2.length] forHTTPHeaderField:@"Content-Length"];
    [request addValue:@"https://www.w3schools.com/xml/CelsiusToFahrenheit" forHTTPHeaderField:@"SOAPAction"];
    
    
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSLog(@"Respuesta: %@", response);
        NSString *output = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        NSLog(@"Salida: %@", output);
        
        
        NSData *myData = [output dataUsingEncoding:NSUTF8StringEncoding];
        
        NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:myData];
        
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
        
        if (error !=nil) {
            NSLog(@"error: %li %@", (long)error.code, error.description);
        }
        
    }];
    
    [task resume];
    
    return true;
    
}


//Implement the NSXmlParserDelegate methods
-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName: (NSString *)qName attributes:(NSDictionary *)attributeDict
{
    _currentElement = elementName;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if ([_currentElement isEqualToString:@"CelsiusToFahrenheitResult"]) {
        [_lblInformacion setStringValue:string];
    }
    
    [self FinalizarProgress];
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
