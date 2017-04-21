//
//  NSSliderViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 16/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "NSSliderViewController.h"

@implementation NSSliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    //asignacion de informacion a los controles
    [_slider setIntValue:25];
    [_lblinformacion setIntValue:[_slider intValue]];
    
    //asignar el nombre de la ventana
    [ self setTitle:@"NSSlider"];
}

- (IBAction)sliderChange:(id)sender {
    [_lblinformacion setIntValue:[_slider intValue]];
}
@end
