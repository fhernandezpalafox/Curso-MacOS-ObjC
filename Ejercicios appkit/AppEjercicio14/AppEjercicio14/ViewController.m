//
//  ViewController.m
//  AppEjercicio14
//
//  Created by Felipe Hernandez on 14/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"Video1" withExtension:@"mov"];
    self.avplayer.player = [AVPlayer playerWithURL:videoURL];
    
    /*
     
     SWIFT
     var videoURL: URL? = Bundle.main.url(forResource: "Video1", withExtension: "mov")
     avplayer.player = AVPlayer.withURL(videoURL)
     
     */
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
