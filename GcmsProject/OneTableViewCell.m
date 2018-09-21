//
//  OneTableViewCell.m
//  GcmsProject
//
//  Created by ljkj on 2018/9/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "OneTableViewCell.h"
#import <UIImageView+WebCache.h>


@interface OneTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *bigImage;

@property (weak, nonatomic) IBOutlet UILabel *contentlab;

@end

@implementation OneTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(Model *)model {
    
    [self.bigImage sd_setImageWithURL:[NSURL URLWithString:model.imgsrc]];
    self.contentlab.text = model.title;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
