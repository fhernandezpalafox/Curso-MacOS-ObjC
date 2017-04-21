//
//  ViewController.m
//  AppEjercicio9
//
//  Created by Felipe Hernandez on 13/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    NSArray *nombres = [[NSArray alloc]
                        initWithObjects:@"Juan",@"Pedro",@"Oscar", nil];
    [_Lista addItemsWithTitles:nombres];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)Agregar:(id)sender {
    [_popUp addItemWithTitle:[_txtItem stringValue]];
    [_txtItem setStringValue:@""];
}

- (IBAction)Cambia:(id)sender {
    [_lblInformacion setStringValue:[_popUp titleOfSelectedItem]];
}
@end








