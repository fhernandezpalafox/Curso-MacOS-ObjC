//
//  AVplayerViewViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 18/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "AVplayerViewViewController.h"

@implementation AVplayerViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    //poner el titulo a la NSViewController
    [self setTitle:@"AVPlayer"];
    
    //cargar el video
    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"Video1"withExtension:@"mov"];
    self.avplayer.player = [AVPlayer playerWithURL:videoURL];

   
   
}

@end
