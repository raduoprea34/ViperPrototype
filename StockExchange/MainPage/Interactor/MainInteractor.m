//
//  MainInteractor.m
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "MainInteractor.h"


@implementation MainInteractor

- (NSInteger)getCategoryCount {
  return 5;
}

- (NSString *)getCategoryNameForIndex:(NSInteger)index {
  return @"BitCoin";
}


- (NSString *)getCompanyCategoryForIndex:(NSInteger)index {
  return @"USD 320.001";
}


- (NSString *)getCompanyLogoForIndex:(NSInteger)index {
  return @"";
}


@end
