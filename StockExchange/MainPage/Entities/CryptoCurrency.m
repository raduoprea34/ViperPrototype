//
//  CryptoCurrency.m
//  StockExchange
//
//  Created by Radu Oprea on 3/30/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "CryptoCurrency.h"

@implementation CryptoCurrency

-(instancetype) initWithName: (NSString *)name andUsdValue: (NSNumber *) usdValue withImageURL: (NSString *) imageURL {
  self = [super init];
  self.name = name;
  self.usdValue = usdValue;
  self.imageURL = imageURL;
  return self;
}

@end
