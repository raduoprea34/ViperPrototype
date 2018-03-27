//
//  MainTableViewCell.m
//  StockExchange
//
//  Created by Radu Oprea on 3/27/18.
//  Copyright © 2018 Radu Oprea. All rights reserved.
//

#import "MainTableViewCell.h"

@implementation MainTableViewCell

- (instancetype) init {
  self = [super init];
  [self setupCompanyLogo];
  [self setupCompanyLogoConstraints];
  [self setupCompanyLabel];
  [self setupCompanyLabelConstraints];
  [self setupCompanyCategoryLabel];
  [self setupCompanyCategoryLabelConstraints];
  return self;
}

-(void) setupCompanyLogo {
  self.companyImageView = [[UIImageView alloc] init];
  [self addSubview: self.companyImageView];
  [self.companyImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
  [self.companyImageView setImage:[UIImage imageNamed:@"logo-placeholder"]];
  [self.companyImageView.layer setBorderWidth:5.0];
  [self.companyImageView.layer setBorderColor: UIColor.orangeColor.CGColor];
  [self.companyImageView.layer setCornerRadius:25.0];
  [self.companyImageView setClipsToBounds:YES];
}

-(void) setupCompanyLogoConstraints {
  [[self.companyImageView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant: 10] setActive:YES];
  [[self.companyImageView.centerYAnchor constraintEqualToAnchor:self.centerYAnchor constant:0] setActive:YES];
  [[self.companyImageView.heightAnchor constraintEqualToConstant:50] setActive:YES];
  [[self.companyImageView.widthAnchor constraintEqualToAnchor:self.companyImageView.heightAnchor constant:0] setActive:YES];
}

-(void) setupCompanyLabel {
  self.companyNameLabel = [[UILabel alloc] init];
  [self addSubview: self.companyNameLabel];
  [self.companyNameLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
  self.companyNameLabel.text = @"Endava";
}
-(void) setupCompanyLabelConstraints {
  [[self.companyNameLabel.leadingAnchor constraintEqualToAnchor:self.companyImageView.trailingAnchor constant:30] setActive:YES];
  [[self.companyNameLabel.centerYAnchor constraintEqualToAnchor:self.centerYAnchor constant:-10] setActive:YES];
  [[self.companyNameLabel.heightAnchor constraintEqualToConstant:50] setActive:YES];
  [[self.companyNameLabel.centerXAnchor constraintEqualToAnchor:self.centerXAnchor constant: 0] setActive:YES];
}

-(void) setupCompanyCategoryLabel {
  self.companyCategoryLabel = [[UILabel alloc] init];
  [self addSubview:self.companyCategoryLabel];
  [self.companyCategoryLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
  self.companyCategoryLabel.text = @"IT Solutions";
  self.companyCategoryLabel.textColor = [UIColor grayColor];
  self.companyCategoryLabel.font = [UIFont systemFontOfSize: 13];
}

-(void) setupCompanyCategoryLabelConstraints {
  [[self.companyCategoryLabel.leadingAnchor constraintEqualToAnchor:self.companyImageView.trailingAnchor constant:30]setActive:YES];
  [[self.companyCategoryLabel.topAnchor constraintEqualToAnchor:self.companyNameLabel.bottomAnchor constant:-10] setActive:YES];
  [[self.companyCategoryLabel.centerXAnchor constraintEqualToAnchor:self.centerXAnchor constant:0] setActive:YES];
}

@end
