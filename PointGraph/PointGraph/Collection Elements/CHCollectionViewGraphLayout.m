//
//  CHCollectionViewGraphLayout.m
//  BezirGraph
//
//  Created by Cillian on 26/04/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import "CHCollectionViewGraphLayout.h"
#import "GraphItem.h"

@interface CHCollectionViewGraphLayout()

@end

@implementation CHCollectionViewGraphLayout

#pragma mark setup


#pragma mark delegate

- (void)prepareLayout {
    [super prepareLayout];
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return YES;
}

- (CGSize)collectionViewContentSize {
    return self.collectionView.bounds.size;
}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSMutableArray *attributes = [NSMutableArray array];
    
    NSInteger itemTotal = [self.collectionView numberOfItemsInSection:0];
    for (NSInteger itemCount = 0; itemCount < itemTotal; itemCount++) {
        UICollectionViewLayoutAttributes *attribute = [self layoutAttributesForItemAtRow:itemCount];
        if (attribute) {
            [attributes addObject:[self layoutAttributesForItemAtRow:itemCount]];
        }
    }
    return attributes;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtRow:(NSInteger)row {
    UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:[NSIndexPath indexPathForItem:row inSection:0]];
    if (self.collectionData.count > 0) {
        GraphItem *item = [self.collectionData objectAtIndex:row];
        CGFloat baseline = self.collectionView.frame.size.height;
        
        attributes.size = CGSizeMake(30, 30);
        attributes.center = CGPointMake((50+(row*50)), baseline-(item.value*3));
        
        return attributes;
    }
    return nil;
}

# pragma mark insertion / deletion

- (UICollectionViewLayoutAttributes *)initialLayoutAttributesForAppearingItemAtIndexPath:(NSIndexPath *)itemIndexPath {
    UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:itemIndexPath];
    
    CGFloat baseline = self.collectionView.frame.size.height;
    
    attributes.size = CGSizeMake(30, 30);
    attributes.center = CGPointMake((50+(itemIndexPath.row*50)), baseline-(attributes.size.height/2));
    
    return attributes;
}


- (UICollectionViewLayoutAttributes *)finalLayoutAttributesForDisappearingItemAtIndexPath:(NSIndexPath *)itemIndexPath {

    UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:itemIndexPath];
    
    CGFloat baseline = self.collectionView.frame.size.height;
    
    attributes.size = CGSizeMake(30, 30);
    attributes.center = CGPointMake((50+(itemIndexPath.row*50)), baseline-(attributes.size.height/2));
    
    return attributes;
}


- (void)prepareForCollectionViewUpdates:(NSArray *)updateItems {
    [super prepareForCollectionViewUpdates:updateItems];
    
    [updateItems enumerateObjectsUsingBlock:^(UICollectionViewUpdateItem *item, NSUInteger idx, BOOL *stop) {
        if (item.updateAction == UICollectionUpdateActionInsert) {
            
        }
        else if (item.updateAction == UICollectionUpdateActionDelete) {
            
        }
    }];
}

@end
