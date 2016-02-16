//
//  ViewController.m
//  CollectionViewDemo
//
//  Created by Magneto on 6/28/14.
//  Copyright (c) 2014 Magneto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    arrOfNames=[[NSMutableArray alloc]initWithObjects:@"Aabid",@"Arif",@"Juber",@"Mahesh", nil];
    
    UICollectionViewFlowLayout *defaultLayout=[[UICollectionViewFlowLayout alloc]init];
    [defaultLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    [defaultLayout setItemSize:CGSizeMake(100,100)];
    [defaultLayout setMinimumLineSpacing:2];
    [defaultLayout setMinimumInteritemSpacing:2];
    
	myCollection=[[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, 320, 480) collectionViewLayout:defaultLayout];
    myCollection.delegate=self;
    myCollection.dataSource=self;
    [self.view addSubview:myCollection];
    
        [myCollection registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
}


-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return arrOfNames.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    if (cell==nil) {
        cell=[[UICollectionViewCell alloc]init];
    }
    cell.backgroundColor=[UIColor blueColor];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Index:%d",indexPath.item);
}

@end
