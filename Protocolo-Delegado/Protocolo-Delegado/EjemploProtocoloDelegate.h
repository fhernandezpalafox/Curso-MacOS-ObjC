//
//  EjemploProtocoloDelegate.h
//  Protocolo-Delegado
//
//  Created by Felipe Hernandez on 11/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EjemploProtocoloDelegate <NSObject>
@required
-(void) procesoCompletado;
@end
