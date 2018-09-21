//
//  TwoTableViewCell.m
//  GcmsProject
//
//  Created by ljkj on 2018/9/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "TwoTableViewCell.h"

@interface TwoTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *leftImage;
@property (weak, nonatomic) IBOutlet UIImageView *middle;
@property (weak, nonatomic) IBOutlet UIImageView *rightImage;

@end

@implementation TwoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(Model *)model {
    
    [self.leftImage sd_setImageWithURL:[NSURL URLWithString:model.imgsrc1]];
    [self.middle sd_setImageWithURL:[NSURL URLWithString:model.imgsrc2]];
    [self.rightImage sd_setImageWithURL:[NSURL URLWithString:model.imgsrc3]];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
