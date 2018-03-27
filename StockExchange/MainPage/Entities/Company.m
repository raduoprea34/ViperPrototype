//
//  Company.m
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "Company.h"

@implementation Company

-(instancetype) initWithName: (NSString *) name andCategory: (NSString *) category withLogo: (NSString *) logo {
  self = [super init];
  self.name = name;
  self.category = category;
  self.logo = logo;
  return self;
}

@end
