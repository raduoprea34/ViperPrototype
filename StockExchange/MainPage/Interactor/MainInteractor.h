//
//  MainInteractor.h
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainPageProtocols.h"

@interface MainInteractor : NSObject <MainInteractorProtocol>

@property id<MainPresenterProtocol> presenter;

@end
