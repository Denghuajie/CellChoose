//
//  ViewController.m
//  cell单选及反选
//
//  Created by Mr.Deng on 15/12/26.
//  Copyright © 2015年 Mr.Deng. All rights reserved.
//
//

#import <UIKit/UIKit.h>


typedef void(^BtnClick)(BOOL selected, NSString *title);

@interface DJSubjectCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIButton *subjectBtn;

@property (nonatomic,copy) BtnClick btnClick;


@end
