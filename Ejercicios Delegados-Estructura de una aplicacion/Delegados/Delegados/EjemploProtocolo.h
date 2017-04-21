//
//  EjemploProtocolo.h
//  Delegados
//
//  Created by Felipe Hernandez on 22/09/16.
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
