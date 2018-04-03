//
//  MainInteractor.m
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "MainInteractor.h"
#import "APIController.h"


@implementation MainInteractor

- (NSInteger)getCurrencyCount {
  NSArray *currencies = [self.cryptoStore.currencies[@"Data"] allKeys];
  return currencies.count;
}

- (NSString *)getCurrencyNameForIndex:(NSInteger)index {
  NSArray *currencies = [self.cryptoStore.currencies[@"Data"] allKeys];
  NSDictionary *currentKey = currencies[index];
  return self.cryptoStore.currencies[@"Data"][currentKey][@"CoinName"];
}

- (NSString *)getCurrencyLogoForIndex:(NSInteger)index {
  NSArray *currencies = [self.cryptoStore.currencies[@"Data"] allKeys];
  NSDictionary *currentKey = currencies[index];
  NSLog(@"%@",self.cryptoStore.currencies[@"Data"][currentKey]);
  return self.cryptoStore.currencies[@"Data"][currentKey][@"ImageUrl"];
}

- (void)createCryptoStore {
  [APIController requestJSONWithURL:[APIController buildURL] withCompletion:^void (NSMutableDictionary * result) {
    self.cryptoStore = [[CryptoStore alloc] initWithJSONDictionary:result];
    [self.presenter didFinishCreatingCryptoStore];
  }];
}



@end
