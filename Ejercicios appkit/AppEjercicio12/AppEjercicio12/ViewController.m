//
//  ViewController.m
//  AppEjercicio12
//
//  Created by Felipe Hernandez on 13/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize persona = persona;

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    persona = [[NSMutableArray alloc] init];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
