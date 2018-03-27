//
//  CompanyStore.h
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CompanyStore : NSObject

+(NSMutableArray *)companies;
+ (void)setup;

@end
