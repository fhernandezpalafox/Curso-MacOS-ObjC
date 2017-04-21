//
//  NSTableViewBindingController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 17/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "NSTableViewBindingController.h"


@implementation NSTableViewBindingController

@synthesize personas2 = personas2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [self setTitle:@"Cocoa Bindings Array"];
    
    personas2 = [[NSMutableArray alloc] init];
}

@end
