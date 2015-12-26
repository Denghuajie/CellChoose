//
//  ViewController.m
//  cell单选及反选
//
//  Created by Mr.Deng on 15/12/26.
//  Copyright © 2015年 Mr.Deng. All rights reserved.
//

#import "DJSubjectCollectionViewCell.h"


@implementation DJSubjectCollectionViewCell


- (IBAction)btnClick:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    
    if (self.btnClick) {
        
        self.btnClick(sender.selected, sender.titleLabel.text);
    }

}


- (void)awakeFromNib {
    
    
}

@end
