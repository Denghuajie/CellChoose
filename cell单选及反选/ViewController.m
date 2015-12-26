//
//  ViewController.m
//  cell单选及反选
//
//  Created by Mr.Deng on 15/12/26.
//  Copyright © 2015年 Mr.Deng. All rights reserved.
//

#import "ViewController.h"
#import "DJSubjectCollectionViewCell.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *subjectArray;

@property (nonatomic, assign) NSInteger currentIndex;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *flowLayout;

@end

@implementation ViewController

static NSString *const reuseIdentifier = @"DJSubjectCollectionViewCell";


- (void)viewDidLoad {
    [super viewDidLoad];
    self.flowLayout.itemSize = CGSizeMake(self.collectionView.frame.size.width / 3, self.collectionView.frame.size.height / 3);
    
    [self.collectionView registerNib:[UINib nibWithNibName:reuseIdentifier bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    
    self.subjectArray = [NSArray arrayWithObjects:@"语文", @"数学", @"英语", @"物理", @"化学", @"生物", @"历史", @"地理", @"思想政治", nil];
    
    self.currentIndex = -1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 9;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    DJSubjectCollectionViewCell *subCell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    [subCell.subjectBtn setTitle:self.subjectArray[indexPath.row] forState:UIControlStateNormal];
    
    
    if (indexPath.row == self.currentIndex) {
        subCell.subjectBtn.selected = YES;
        subCell.subjectBtn.userInteractionEnabled = YES;
        subCell.btnClick = ^(BOOL selected, NSString *title){
            
            NSLog(@"点击了按钮,按钮的标题是:%@", self.subjectArray[indexPath.row]);
        };

    }
    else
    {
        subCell.subjectBtn.selected = NO;
        subCell.subjectBtn.userInteractionEnabled = NO;
    }

    
    return subCell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    self.currentIndex = indexPath.row;
    
    NSLog(@"点击cell");
    
    [self.collectionView reloadData];
}


@end
