//
//  EjemploProtocolo.h
//  Protocolo-Delegado
//
//  Created by Felipe Hernandez on 11/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EjemploProtocoloDelegate.h"

@interface EjemploProtocolo : NSObject
{
    id <EjemploProtocoloDelegate> _delegate;
}

@property (nonatomic,strong) id delegate;

-(void) comenzarProceso;

@end

