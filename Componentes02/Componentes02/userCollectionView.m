//
//  userCollectionView.m
//  Componentes02
//
//  Created by Felipe Hernandez on 24/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "userCollectionView.h"

@implementation userCollectionView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
     [self setTitle:@"Colecciones"];
}


-(void)setRepresentedObject:(id)representedObject{
    [super setRepresentedObject:representedObject];
    
    if (representedObject !=nil)
    {
        
        [self.lblTitulo setStringValue:[representedObject valueForKey:@"itemtitulo"]];
        [self.lbldescripcion setStringValue:[representedObject valueForKey:@"itemdescripcion"]];
    }
    else
    {
        [self.lblTitulo setStringValue:@"No Value"];
        [self.lbldescripcion setStringValue:@"No Value"];
        
    }
}



- (IBAction)precioname:(id)sender {
    NSLog(@" %s",__func__);
    NSLog(@" %@",_lblTitulo.stringValue);
}
@end
