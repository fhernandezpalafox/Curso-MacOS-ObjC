//
//  NSSliderViewController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 16/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSSliderViewController : NSViewController
@property (weak) IBOutlet NSTextField *lblinformacion;
@property (weak) IBOutlet NSSlider *slider;
- (IBAction)sliderChange:(id)sender;

@end
