//
//  PrincipalViewController.m
//  AppEjercicio15
//
//  Created by Felipe Hernandez on 14/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

-(void) viewWillAppear{
    [_lblInformacion setStringValue:[@"Bienvenido " stringByAppendingString:_usuario]];
}

@end
