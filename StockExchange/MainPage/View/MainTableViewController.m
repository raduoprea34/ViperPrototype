//
//  MainTableViewController.m
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "MainTableViewController.h"
#import "MainTableViewCell.h"
#import "APIController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void) viewDidLoad {
  [self.tableView registerClass:[MainTableViewCell class] forCellReuseIdentifier:@"mainCell"];
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
  self.tableView.backgroundColor = [UIColor blackColor];
  NSURL *url = [APIController buildURL];
  [APIController requestJSONWithURL:url ];
  
}

//DELEGATE METHODS
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 100.0;
}

//DATASOURCE METHODS
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return [self.presenter getCategoryCount];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  MainTableViewCell *customTableViewCell = [[MainTableViewCell alloc] init];
  customTableViewCell.companyNameLabel.text = [self.presenter getCategoryNameForIndex:indexPath.row];
  customTableViewCell.companyCategoryLabel.text = [self.presenter getCompanyCategoryForIndex:indexPath.row];
    UIImage *image = [UIImage imageNamed:[self.presenter getCompanyLogoForIndex:indexPath.row]];
  customTableViewCell.companyImageView.image = image;

  ;
  
  return customTableViewCell;
}

@end
