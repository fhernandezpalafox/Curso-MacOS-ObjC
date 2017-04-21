//
//  AVplayerViewViewController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 18/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AVplayerViewViewController : NSViewController
@property (weak) IBOutlet AVPlayerView *avplayer;

@end
