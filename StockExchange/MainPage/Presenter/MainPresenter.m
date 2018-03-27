//
//  MainPresenter.m
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "MainPresenter.h"

@implementation MainPresenter

- (NSInteger)getCategoryCount {
  return [self.interactor getCategoryCount];
}

- (NSString *)getCategoryNameForIndex:(NSInteger)index {
  return [self.interactor getCategoryNameForIndex:index];
}


- (NSString *)getCompanyCategoryForIndex:(NSInteger)index {
  return [self.interactor getCompanyCategoryForIndex:index];
}


- (NSString *)getCompanyLogoForIndex:(NSInteger)index {
  return [self.interactor getCompanyLogoForIndex:index];
}


-(void) connectView:(id<MainViewProtocol>)view {
  self.view = view;
}

@end
