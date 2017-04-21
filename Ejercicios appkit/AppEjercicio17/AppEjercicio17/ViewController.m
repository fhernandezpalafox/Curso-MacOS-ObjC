//
//  ViewController.m
//  AppEjercicio17
//
//  Created by Felipe Hernandez on 14/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//DataSource
- (NSInteger)collectionView:(NSCollectionView *)collectionView numberOfItemsInSection: (NSInteger)section {
    return 20;
}

- (NSCollectionViewItem *)collectionView:(NSCollectionView *)collectionView itemForRepresentedObjectAtIndexPath:(NSIndexPath *)indexPath{
    
    return [collectionView makeItemWithIdentifier:@"UserCollectionViewItem" forIndexPath:indexPath];
}

@end
