//
//  Company.h
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Company : NSObject

@property NSString *name;
@property NSString *category;
@property NSString *logo;

-(instancetype) initWithName: (NSString *) name andCategory: (NSString *) category withLogo: (NSString *) logo;

@end
