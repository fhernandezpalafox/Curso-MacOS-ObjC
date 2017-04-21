//
//  NSDateViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 16/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "NSDateViewController.h"

@implementation NSDateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [_dtFecha setDateValue:[NSDate date]];
    
    //Asignar el nombre de la ventana
    [ self setTitle:@"NSDate"];
}

- (IBAction)mostrarInformacion:(id)sender {
    
    //Formatear
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-dd"];
    
    NSString *fecha = [format stringFromDate:[NSDate date]];
    
    // NSString *fecha = [format stringFromDate:[_dtFecha dateValue]];
    
    NSString * str  = [[NSString alloc]initWithFormat:@"Mi nombres es %@ y la fecha es %@",[_txtNombre stringValue],fecha];
    [_lbldato setStringValue:str];
}
@end
