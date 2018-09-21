//
//  CellFactory.h
//  GcmsProject
//
//  Created by ljkj on 2018/9/21.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Model.h"

typedef  NS_ENUM(NSUInteger,CellType) {
    
    OneImageCellType,
    TwoLabCellType,
    ThreeImageCellType
};

@interface CellFactory : NSObject

+ (void)cellRegistetWithTableView:(UITableView *)tableView;
+ (UITableViewCell *)cellWithTableView:(UITableView *)tableView Model:(Model *)model indexPath:(NSIndexPath *)indexPath;
+ (CGFloat)cellHeightWithModel:(Model *)model;
@end
