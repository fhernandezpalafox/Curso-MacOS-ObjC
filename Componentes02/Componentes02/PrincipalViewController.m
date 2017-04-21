//
//  PrincipalViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 31/12/15.
//  Copyright © 2015 Felipe Hernandez. All rights reserved.
//

#import "PrincipalViewController.h"

@implementation PrincipalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

-(void) viewWillAppear{
    [_lblInformacion setStringValue: [@"Bienvenido " stringByAppendingString:_usuario]];
}

@end
