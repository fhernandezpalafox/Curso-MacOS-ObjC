//
//  UserCollection.m
//  AppEjercicio18
//
//  Created by Felipe Hernandez on 16/12/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "UserCollection.h"

@implementation UserCollection

-(NSCollectionViewItem *) collectionView:(NSCollectionView *)collectionView itemForRepresentedObjectAtIndexPath:(NSIndexPath *)indexPath{
    
    UserItem *item = [collectionView makeItemWithIdentifier:@"UserItem" forIndexPath:indexPath];
    item.lblInformacion.stringValue = [arr objectAtIndex:[indexPath item]];
    return item;
}

-(NSInteger)collectionView:(NSCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [arr count];
}

-(void)collectionView:(NSCollectionView *)collectionView willDisplayItem:(NSCollectionViewItem *)item forRepresentedObjectAtIndexPath:(NSIndexPath *)indexPath{

}

-(void)collectionView:(NSCollectionView *)collectionView didEndDisplayingItem:(NSCollectionViewItem *)item forRepresentedObjectAtIndexPath:(NSIndexPath *)indexPath{
}

-(NSInteger)numberOfSectionsInCollectionView:(NSCollectionView *)collectionView{
    return 1;
}

-(void)viewDidMoveToWindow{
 
    self.delegate = self;
    self.dataSource  = self;
    
    arr = [[NSMutableArray alloc] init];
    
    for (int num = 0; num < 100; num++) {
        
         [arr addObject: [NSString stringWithFormat:@"Hola %i",num]];
    }
    
}


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
