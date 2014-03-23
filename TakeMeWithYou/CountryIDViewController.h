//
//  CountryIDViewController.h
//  TakeMeWithYou
//
//  Created by rociosev on 3/23/14.
//  Copyright (c) 2014 RocioSPearlHacks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryIDViewController : UIViewController {
    NSString* _countryName;
}
@property (weak, nonatomic) IBOutlet UILabel *countryNameLabel;
@property (weak, nonatomic) IBOutlet UINavigationItem *countryNameTitle;
@property (weak, nonatomic) IBOutlet UIImageView *countryImage;
@property (weak, nonatomic) IBOutlet UILabel *Language;
@property (weak, nonatomic) IBOutlet UIButton *Trending;
- (void)setCountryName:(NSString *)countryName;

@end
