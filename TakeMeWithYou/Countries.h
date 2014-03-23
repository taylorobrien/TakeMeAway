//
//  Countries.h
//  TakeMeWithYou
//
//  Created by rociosev on 3/22/14.
//  Copyright (c) 2014 RocioSPearlHacks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Countries : UITableViewController<UISearchBarDelegate > {
    NSString* _storedCountry;
}
@property (weak, nonatomic) IBOutlet UISearchBar*countrySearchBar;


@end
