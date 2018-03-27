//
//  MainInteractor.m
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "MainInteractor.h"
#import "CompanyStore.h"
#import "Company.h"

@implementation MainInteractor

- (NSInteger)getCategoryCount {
  if (CompanyStore.companies.count == 0) {
    [CompanyStore setup];
  }
  return CompanyStore.companies.count;
}

- (NSString *)getCategoryNameForIndex:(NSInteger)index {
  if (CompanyStore.companies.count == 0) {
    [CompanyStore setup];
  }
  Company *company = CompanyStore.companies[index];
  return company.name;
}


- (NSString *)getCompanyCategoryForIndex:(NSInteger)index {
  if (CompanyStore.companies.count == 0) {
    [CompanyStore setup];
  }
  Company *company = CompanyStore.companies[index];
  return company.category;
}


- (NSString *)getCompanyLogoForIndex:(NSInteger)index {
  if (CompanyStore.companies.count == 0) {
    [CompanyStore setup];
  }
  Company *company = CompanyStore.companies[index];
  return company.logo;
}


@end
