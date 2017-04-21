//
//  PersonaCollectionViewItem.m
//  AppEjercicio19
//
//  Created by Felipe Hernandez on 23/12/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "PersonaCollectionViewItem.h"

@interface PersonaCollectionViewItem ()

@end

@implementation PersonaCollectionViewItem

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

-(void)setRepresentedObject:(id)representedObject{
    [super setRepresentedObject:representedObject];
    
    if (representedObject !=nil)
    {
        [self.lblNombre setStringValue:[representedObject valueForKey:@"itemNombre"]];
        [self.lblDescripcion setStringValue:[representedObject valueForKey:@"itemDescripcion"]];
        
    }
    else
    {
        [self.lblNombre setStringValue:@"No Value"];
        [self.lblDescripcion setStringValue:@"No Value"];
    }
}

- (IBAction)Presioname:(id)sender {
    NSLog(@" %s",__func__);
    NSLog(@" %@",_lblNombre.stringValue);
}
@end
