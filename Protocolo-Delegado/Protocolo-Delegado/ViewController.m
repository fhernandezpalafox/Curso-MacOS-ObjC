//
//  ViewController.m
//  Protocolo-Delegado
//
//  Created by Felipe Hernandez on 11/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    EjemploProtocolo *ejemploProtocolo = [[EjemploProtocolo alloc]init];
    ejemploProtocolo.delegate = self;
    [_lblInformacion setText:@"Procesando..."];
    [ejemploProtocolo comenzarProceso];
  
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)procesoCompletado {
    [_lblInformacion setText:@"Proceso completado"];
}

@end
