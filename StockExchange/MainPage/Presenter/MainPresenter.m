//
//  MainPresenter.m
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "MainPresenter.h"

@implementation MainPresenter

- (NSInteger)getCurrencyCount {
  return [self.interactor getCurrencyCount];
}

- (NSString *)getCurrencyNameForIndex:(NSInteger)index {
  return [self.interactor getCurrencyNameForIndex:index];
}

- (NSString *)getCurrencyLogoForIndex:(NSInteger)index {
  return [self.interactor getCurrencyLogoForIndex:index];
}

- (void)didFinishCreatingCryptoStore {
  [self.view updateTableView];
}


- (void)viewDidLoad {
  [self.interactor createCryptoStore];
}



-(void) connectView:(id<MainViewProtocol>)view {
  self.view = view;
}

@end
