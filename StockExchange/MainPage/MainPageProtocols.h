
//
//  MainPageProtocols.h
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

@protocol MainViewProtocol
-(void) updateTableView;
@end

@protocol MainPresenterProtocol
-(NSString *) getCurrencyNameForIndex: (NSInteger) index ;
-(NSString *) getCurrencyLogoForIndex: (NSInteger) index;
-(NSInteger) getCurrencyCount;
-(void) viewDidLoad;
-(void) didFinishCreatingCryptoStore;
@end

@protocol MainInteractorProtocol
-(NSString *) getCurrencyNameForIndex: (NSInteger) index ;
-(NSString *) getCurrencyLogoForIndex: (NSInteger) index;
-(NSInteger) getCurrencyCount;
-(void) createCryptoStore;
@end

