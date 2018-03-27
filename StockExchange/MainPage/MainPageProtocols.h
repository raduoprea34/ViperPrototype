
//
//  MainPageProtocols.h
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

@protocol MainViewProtocol
@end

@protocol MainPresenterProtocol
-(NSString *) getCategoryNameForIndex: (NSInteger) index ;
-(NSString *) getCompanyCategoryForIndex: (NSInteger) index;
-(NSString *) getCompanyLogoForIndex: (NSInteger) index;
-(NSInteger) getCategoryCount;
@end

@protocol MainInteractorProtocol
-(NSString *) getCategoryNameForIndex: (NSInteger) index ;
-(NSString *) getCompanyCategoryForIndex: (NSInteger) index;
-(NSString *) getCompanyLogoForIndex: (NSInteger) index;
-(NSInteger) getCategoryCount;
@end
