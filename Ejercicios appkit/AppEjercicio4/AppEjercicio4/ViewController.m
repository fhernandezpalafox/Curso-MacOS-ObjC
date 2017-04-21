//
//  ViewController.m
//  AppEjercicio4
//
//  Created by Felipe Hernandez on 28/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    [_slider setIntValue:25];
    [_lblinformacion setIntValue:[_slider intValue]];
    
    [self setTitle:@"Slider"];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)sliderChange:(id)sender {
    [_lblinformacion setIntValue:[_slider intValue]];
    
    [_Imagen setFrameSize:NSMakeSize((CGFloat)[_slider doubleValue], (CGFloat)[_slider doubleValue])];
    
}
@end
