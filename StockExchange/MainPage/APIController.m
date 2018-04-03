//
//  APIController.m
//  StockExchange
//
//  Created by Radu Oprea on 3/30/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "APIController.h"
#import "Serializer.h"

@implementation APIController

+(NSURL *) buildURL {
  NSURLComponents *components = [[NSURLComponents alloc] init];
  components.scheme = @"https";
  components.host = @"min-api.cryptocompare.com";
  components.path = @"/data/all/coinlist";
  return components.URL;
}

+(void) requestJSONWithURL: (NSURL *) url withCompletion: (void (^)(NSMutableDictionary *)) completion {
  [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
    NSMutableDictionary *jsonObject = (NSMutableDictionary *)[Serializer jsonDictionaryFromData:data];
    completion(jsonObject);
  }] resume];
}

@end
