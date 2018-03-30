//
//  Serializer.h
//  StockExchange
//
//  Created by Radu Oprea on 3/30/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Serializer : NSObject

+(NSDictionary *) jsonDictionaryFromData: (NSData *)data;

@end
