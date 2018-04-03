//
//  APIController.h
//  StockExchange
//
//  Created by Radu Oprea on 3/30/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIController : NSObject

+(void) requestJSONWithURL: (NSURL *) url withCompletion: (void (^)(NSMutableDictionary *)) completion;
+(NSURL *) buildURL;

@end
