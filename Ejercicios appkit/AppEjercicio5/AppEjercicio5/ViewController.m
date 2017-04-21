//
//  ViewController.m
//  AppEjercicio5
//
//  Created by Felipe Hernandez on 28/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    [self setTitle:@"Otros componentes"];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)Seleccionar:(id)sender {
    
    switch ([sender selectedSegment]) {
        case 0:
            [_txtSelecionado setStringValue:@"Se selecciono hombre"];
            break;
        case 1:
            [_txtSelecionado setStringValue:@"Se selecciono mujer"];
            break;
        case 2:
            [_txtSelecionado setStringValue:@"Se selecciono niño"];
            break;
        default:
            break;
    }
}
@end
