//
//  AppDelegate.h
//  AppEjercicio21
//
//  Created by Felipe Hernandez on 03/01/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic,strong) NSString *databasename;
@property (nonatomic,strong) NSString *databasepath;

-(void) loadDB;
-(id) init;

@end

