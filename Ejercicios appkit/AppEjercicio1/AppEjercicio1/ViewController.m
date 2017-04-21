//
//  ViewController.m
//  AppEjercicio1
//
//  Created by Felipe Hernandez on 26/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"
#import "Operaciones.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)Operacion:(id)sender {
    
    Operaciones *operaciones = [[Operaciones alloc] init];
    
    int num1, num2,resultado;
    
    NSString *emoji = @"🦍";
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"OK"];
    [alert addButtonWithTitle:@"Cancel"];
    [alert setMessageText:[NSString stringWithFormat:@"Un emoji %@",emoji]];
    [alert setInformativeText:@"Deleted records cannot be restored."];
    [alert setAlertStyle:NSAlertStyleWarning];
    [alert runModal];
    
   //resultado = [operaciones sumar:_txtNum1.intValue anddos:_txtNum2.intValue];
    
    @try {
        num1 = _txtNum1.intValue;
        num2 = _txtNum2.intValue;
        
        resultado = num1 / num2;
        
    } @catch (NSException *exception) {
        NSLog(@"Error de operacion %@",[exception reason]);
    }
    
    
    
    NSString *test = @"test";
    unichar a;
    int index = 5;
    
    @try {
        a = [test characterAtIndex:index];
    }
    @catch (NSException *exception) {
        NSLog(@"Error de programacion %@", exception.reason);
    }
    @finally {
        NSLog(@"Char at index %d cannot be found", index);
        NSLog(@"Max index is: %lu", [test length]-1);
    }
   
    
    [_lblResultado setStringValue:[NSString stringWithFormat:@"El resultado es: %i",resultado]];
    
}
@end
