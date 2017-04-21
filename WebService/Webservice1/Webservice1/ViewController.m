//
//  ViewController.m
//  Webservice1
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

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
    
    _soapMessage = [NSString stringWithFormat:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>"
                    "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">"
                    "<soap:Body>"
                    "<CelsiusToFahrenheit xmlns=\"https://www.w3schools.com/xml/\">"
                    "<Celsius>%@</Celsius>"
                    "</CelsiusToFahrenheit>"
                    "</soap:Body>"
                    "</soap:Envelope>", _txtDato.stringValue];

    
    NSURL *url = [NSURL URLWithString:@"https://www.w3schools.com/xml/tempconvert.asmx"];
    NSMutableURLRequest *theRequest = [NSMutableURLRequest requestWithURL:url];
    NSString *msgLength = [NSString stringWithFormat:@"%lu", (unsigned long)[_soapMessage length]];

   
    //ad required headers to the request
    [theRequest addValue:@"www.w3schools.com" forHTTPHeaderField:@"Host"];
    [theRequest addValue: @"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [theRequest addValue: @"https://www.w3schools.com/xml/CelsiusToFahrenheit" forHTTPHeaderField:@"SOAPAction"];
    [theRequest addValue: msgLength forHTTPHeaderField:@"Content-Length"];
    [theRequest setHTTPMethod:@"POST"];
    [theRequest setHTTPBody: [_soapMessage dataUsingEncoding:NSUTF8StringEncoding]];
    
    //initiate the request
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
    if(connection)
    {
        _webResponseData = [NSMutableData data] ;
    }
    else
    {
        NSLog(@"Connection is NULL");
    }

    
    
}


//Implement the connection delegate methods.
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    [self.webResponseData  setLength:0];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [self.webResponseData  appendData:data];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"Some error in your Connection. Please try again.");
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection {
    
    NSLog(@"Received %lu Bytes", (unsigned long)[_webResponseData length]);
    
    NSString *theXML = [[NSString alloc] initWithBytes:
                        [_webResponseData mutableBytes] length:[_webResponseData length] encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@",theXML);
    
    //now parsing the xml
    
    NSData *myData = [theXML dataUsingEncoding:NSUTF8StringEncoding];
    
    NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:myData];
    
    //setting delegate of XML parser to self
    xmlParser.delegate = self;
    
    // Run the parser
    @try{
        BOOL parsingResult = [xmlParser parse];
        NSLog(@"parsing result = %hhd",parsingResult);
    }
    @catch (NSException* exception)
    {
        NSLog(@"%@",exception.reason);
        return;
    }
}



///XML Delegate

//Implement the NSXmlParserDelegate methods
-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName: (NSString *)qName attributes:(NSDictionary *)attributeDict
{
    _currentElement = elementName;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if ([_currentElement isEqualToString:@"CelsiusToFahrenheitResult"]) {
        [_lblinformacion setStringValue:string];
    }
    
    [self FinalizarProgress];
}


- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    NSLog(@"Parsed Element : %@", _currentElement);
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
