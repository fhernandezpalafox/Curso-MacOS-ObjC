//
//  UserCollection.h
//  AppEjercicio18
//
//  Created by Felipe Hernandez on 16/12/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "UserItem.h"


@interface UserCollection : NSCollectionView<NSCollectionViewDataSource,NSCollectionViewDelegate>{
    NSMutableArray *arr;
}

@end
