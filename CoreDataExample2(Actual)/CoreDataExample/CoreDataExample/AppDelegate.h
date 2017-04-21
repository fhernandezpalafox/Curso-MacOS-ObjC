//
//  AppDelegate.h
//  CoreDataExample
//
//  Created by Felipe Hernandez on 16/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;


@end

