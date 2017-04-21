//
//  otrosComponentes.m
//  Componentes02
//
//  Created by Felipe Hernandez on 17/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "otrosComponentes.h"

@implementation otrosComponentes

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self setTitle:@"Otros Componentes"];
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
