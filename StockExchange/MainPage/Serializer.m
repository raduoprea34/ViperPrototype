//
//  Serializer.m
//  StockExchange
//
//  Created by Radu Oprea on 3/30/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "Serializer.h"

@implementation Serializer

+(NSDictionary *) jsonDictionaryFromData:(NSData *)data {
  return [NSJSONSerialization JSONObjectWithData:data options:0 error:0];
}

@end
