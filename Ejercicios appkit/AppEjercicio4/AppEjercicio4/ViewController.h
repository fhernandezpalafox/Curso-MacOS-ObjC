//
//  ViewController.h
//  AppEjercicio4
//
//  Created by Felipe Hernandez on 28/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *lblinformacion;
@property (weak) IBOutlet NSSlider *slider;
@property (weak) IBOutlet NSImageView *Imagen;

- (IBAction)sliderChange:(id)sender;


@end

