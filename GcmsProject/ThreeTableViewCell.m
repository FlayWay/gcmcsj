//
//  ThreeTableViewCell.m
//  GcmsProject
//
//  Created by ljkj on 2018/9/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "ThreeTableViewCell.h"

@interface ThreeTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *topLab;
@property (weak, nonatomic) IBOutlet UILabel *bottomLab;


@end


@implementation ThreeTableViewCell


- (void)setModel:(Model *)model {
    
    [self.iconImage sd_setImageWithURL:[NSURL URLWithString:model.picUrl]];
    self.topLab.text = model.name;
    self.bottomLab.text = model.singer;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
