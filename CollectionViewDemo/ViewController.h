//
//  ViewController.h
//  CollectionViewDemo
//
//  Created by Magneto on 6/28/14.
//  Copyright (c) 2014 Magneto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
{
    UICollectionView *myCollection;
    NSMutableArray *arrOfNames;
}
@end
