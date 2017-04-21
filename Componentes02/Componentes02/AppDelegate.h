//
//  AppDelegate.h
//  Componentes02
//
//  Created by Felipe Hernandez on 15/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate,
                                   NSUserNotificationCenterDelegate>

@property (nonatomic,strong) NSString *databasename;
@property (nonatomic,strong) NSString *databasepath;

-(void) loadDB;

-(id) init;
@end

