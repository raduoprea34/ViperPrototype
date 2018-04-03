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
  [self.presenter viewDidLoad];
}

//DELEGATE METHODS
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 100.0;
}

//DATASOURCE METHODS
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return [self.presenter getCurrencyCount];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  MainTableViewCell *customTableViewCell = [[MainTableViewCell alloc] init];
  customTableViewCell.companyNameLabel.text = [self.presenter getCurrencyNameForIndex:indexPath.row];
  
  NSString *imageURLString = [NSString stringWithFormat: @"https://cryptocompare.com%@",[self.presenter getCurrencyLogoForIndex:indexPath.row]];
  NSURL *imageURL = [NSURL URLWithString:imageURLString];
  
  NSURLRequest *urlRequest = [NSURLRequest requestWithURL:imageURL];
  [[NSURLSession.sharedSession dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    UIImage *image = [UIImage imageWithData:data];
    dispatch_async(dispatch_get_main_queue(), ^{
      customTableViewCell.companyImageView.image = image;
    });
  }] resume];
  
  return customTableViewCell;
}

-(void) updateTableView{
  dispatch_async(dispatch_get_main_queue(), ^{
    [self.tableView reloadData];
  });
}

@end
