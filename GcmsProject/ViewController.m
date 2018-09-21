//
//  ViewController.m
//  GcmsProject
//
//  Created by ljkj on 2018/9/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
#import "CellFactory.h"
#import "BaseTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataArr;
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:UIScreen.mainScreen.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"dataSource" ofType:@"plist"];
    self.dataArr = [Model mj_objectArrayWithFile:path];
    [CellFactory cellRegistetWithTableView:self.tableView];
    [self.view addSubview:self.tableView];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Model *model = self.dataArr[indexPath.row];
    BaseTableViewCell *cell = (BaseTableViewCell *)[CellFactory cellWithTableView:tableView Model:model indexPath:indexPath];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    Model *model = self.dataArr[indexPath.row];
    return [CellFactory cellHeightWithModel:model];
}



@end
