//
//  EjemploProtocolo.m
//  Protocolo-Delegado
//
//  Created by Felipe Hernandez on 11/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "EjemploProtocolo.h"

@implementation EjemploProtocolo

-(void) comenzarProceso{
    [NSTimer scheduledTimerWithTimeInterval:3.0
                                     target:self.delegate
                                   selector:@selector(procesoCompletado)
                                   userInfo:nil
                                    repeats:NO];
}
@end
