//
//  ViewController.m
//  AppEjercicio6
//
//  Created by Felipe Hernandez on 29/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    [self setTitle:@"NSDatePicker"];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)mostrarInformacion:(id)sender {
    
    //Formatter
    
   // NSDateFormatter  *format = [[NSDateFormatter alloc] init];
   // [format setDateFormat:@"yyyy-MM-dd"];
   // NSString *fecha = [format stringFromDate:[_dtFecha dateValue]];
   // NSString *str =  [[NSString alloc] initWithFormat:@"La %@ es: %@",[_txtDescripcion stringValue],fecha];
    
    
   // NSString *fecha = [format stringFromDate:[NSDate date]]; Toma la fecha del sistema
    
     
    
    NSString *str =  [[NSString alloc]
                       initWithFormat:@"La %@ es: %@",
                       [_txtDescripcion stringValue],
                       [_dtFecha stringValue]];
    
    [_lbldato setStringValue:str];
 
}
@end
