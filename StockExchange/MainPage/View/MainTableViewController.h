//
//  MainTableViewController.h
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainPageProtocols.h"

@interface MainTableViewController : UITableViewController <MainViewProtocol, UITableViewDelegate, UITableViewDataSource>

@property id<MainPresenterProtocol> presenter;

@end
