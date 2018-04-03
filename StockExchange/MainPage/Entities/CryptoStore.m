//
//  CryptoStore.m
//  StockExchange
//
//  Created by Radu Oprea on 3/30/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "CryptoStore.h"

@implementation CryptoStore

-(instancetype) initWithJSONDictionary: (NSMutableDictionary *) currencies {
  self = [super init];
  self.currencies = currencies;
  return self;
}

@end
