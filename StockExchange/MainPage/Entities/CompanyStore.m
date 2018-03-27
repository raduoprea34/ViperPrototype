//
//  CompanyStore.m
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "CompanyStore.h"
#import "Company.h"

@implementation CompanyStore

+(NSMutableArray *)companies {
  static NSMutableArray *companies = nil;
  if (companies == nil) {
    companies = [[NSMutableArray alloc] init];
  }
  return companies;
}

+(void) setup {
  Company *microsoft = [[Company alloc] init];
  microsoft.name = @"Microsoft";
  microsoft.category = @"Technology";
  microsoft.logo = @"microsoft_logo";
  
  Company *apple = [[Company alloc] initWithName:@"Apple" andCategory:@"Technology" withLogo:@"apple_logo"];
  
  Company *kfc = [[Company alloc] initWithName:@"KFC" andCategory:@"Food" withLogo:@"kfc_logo"];
  
  [self.companies addObject:microsoft];
  [self.companies addObject:apple];
  [self.companies addObject:kfc];
}

@end
