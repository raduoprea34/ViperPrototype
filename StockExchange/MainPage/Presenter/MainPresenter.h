//
//  MainPresenter.h
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainPageProtocols.h"

@interface MainPresenter : NSObject <MainPresenterProtocol>
@property id<MainInteractorProtocol> interactor;
@property (weak, nonatomic) id<MainViewProtocol> view;

-(void) connectView: (id<MainViewProtocol>) view;

@end
