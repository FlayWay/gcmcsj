//
//  CellFactory.m
//  GcmsProject
//
//  Created by ljkj on 2018/9/21.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "CellFactory.h"
#import "BaseTableViewCell.h"

@implementation CellFactory

+ (void)cellRegistetWithTableView:(UITableView *)tableView{
    
    UINib *nibOne = [UINib nibWithNibName:@"OneTableViewCell" bundle:nil];
    [tableView registerNib:nibOne forCellReuseIdentifier:@"OneTableViewCell"];
    
    UINib *nibTwo = [UINib nibWithNibName:@"TwoTableViewCell" bundle:nil];
    [tableView registerNib:nibTwo forCellReuseIdentifier:@"TwoTableViewCell"];
    
    UINib *nibThree = [UINib nibWithNibName:@"ThreeTableViewCell" bundle:nil];
    [tableView registerNib:nibThree forCellReuseIdentifier:@"ThreeTableViewCell"];
    
}

+(BaseTableViewCell *)cellWithTableView:(UITableView *)tableView Model:(Model *)model indexPath:(NSIndexPath *)indexPath {
    
    return [self cellWithTableView:tableView Model:model indexPath:indexPath cellType:[self cellTypeWithModel:model]];
}

+ (CellType)cellTypeWithModel:(Model *)model {
    
    if (model.tag == 001) {
        return OneImageCellType;
    }else if (model.tag == 002) {
        
        return TwoLabCellType;
        
    }else if (model.tag == 003) {
        return ThreeImageCellType;
    }
    return nil;
}

+ (BaseTableViewCell *)cellWithTableView:(UITableView *)tableView Model:(Model *)model indexPath:(NSIndexPath *)indexPath cellType:(CellType)cellType {
    
    BaseTableViewCell *cell = nil;
    switch (cellType) {
        case OneImageCellType:
        {
            
            cell = [tableView dequeueReusableCellWithIdentifier:@"OneTableViewCell" forIndexPath:indexPath];
        }
            break;
        case TwoLabCellType: {
            
           cell = [tableView dequeueReusableCellWithIdentifier:@"TwoTableViewCell" forIndexPath:indexPath];
        }
            break;
        case ThreeImageCellType: {
            cell = [tableView dequeueReusableCellWithIdentifier:@"ThreeTableViewCell" forIndexPath:indexPath];
        }
            break;
        default:
            break;
    }
    cell.model = model;
    return cell;
}

+ (CGFloat)cellHeightWithModel:(Model *)model {
    
    return [self cellHeightWithModel:model cellType:[self cellTypeWithModel:model]];
}

+ (CGFloat)cellHeightWithModel:(Model *)model cellType:(CellType)cellType{
    
    switch (cellType) {
        case OneImageCellType:
        {
            return 150;
        }
            break;
        case TwoLabCellType: {
            
           return 150;
        }
            break;
        case ThreeImageCellType: {
            return 150;
        }
            break;
        default:
            break;
    }
}

@end
