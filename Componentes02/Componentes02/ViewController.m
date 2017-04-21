//
//  ViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 15/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionView.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //Asignar el nombre de la ventana
    [ self setTitle:@"Dialog"];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

/*
-(void) prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"UnionDialogo"]) {
        CustomDialogController *dialog =  [[CustomDialogController alloc]init];
        [dialog presentViewControllerAsModalWindow:self];
    }
    
}
*/

- (IBAction)coleccion:(id)sender {
    
    NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    CustomCollectionView *controller = (CustomCollectionView *)[storyboard instantiateControllerWithIdentifier:@"ColeccionView"];
    [controller presentViewControllerAsModalWindow:controller];
    
}
@end
