//
//  Countries.m
//  TakeMeWithYou
//
//  Created by rociosev on 3/22/14.
//  Copyright (c) 2014 RocioSPearlHacks. All rights reserved.
//

#import "Countries.h"
#import "CountryIDViewController.h"

@interface Countries ()
@property (strong, nonatomic) NSArray* countriesArray;
@property (strong, nonatomic) NSMutableArray* allTableData;
@property (strong, nonatomic) NSMutableArray* filteredTableData;
@property (nonatomic) bool isFiltered;
@end

@implementation Countries

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.allTableData = [self Countries];
    UISearchBar *tempSearchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 0)];
    self.countrySearchBar = tempSearchBar;
    self.countrySearchBar.delegate = self;
    [self.countrySearchBar sizeToFit];
    self.tableView.tableHeaderView = self.countrySearchBar;
    self.countrySearchBar.delegate = (id)self;
    self.filteredTableData = FALSE;
}
-(void)searchBar:(UISearchBar*)searchBar textDidChange:(NSString*)text
{
    if(text.length == 0)
    {
       self.isFiltered = FALSE;
    }
    else
    {
        NSLog (text);
        self.isFiltered = true;
        self.filteredTableData = [[NSMutableArray alloc] init];
        
        for (NSString* country in self.allTableData)
        {
            NSRange nameRange = [country rangeOfString:text options:NSCaseInsensitiveSearch];
           
            if(nameRange.location != NSNotFound)
            {
                [self.filteredTableData addObject:country];
            }
        }
    }
    
    [self.tableView reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    int rowCount;
    if(self.isFiltered)
        rowCount = self.filteredTableData.count;
    else
        rowCount = self.allTableData.count;
    //return self.countriesArray.count;

    return rowCount;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
    cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString* country;
    if(self.isFiltered)
        country = [self.filteredTableData objectAtIndex:indexPath.row];
    else
        country = [self.allTableData objectAtIndex:indexPath.row];
    static NSString *cellIdentifier = @"CountryCell";
    UITableViewCell *cell;
    static NSString *favCountry = @"favCountry";
    if ([country isEqualToString:@"Argentina"] || [country isEqualToString: @"United States"] || [country isEqualToString:@"Uruguay" ]|| [country isEqualToString: @"Peru"] || [country isEqualToString: @"Italy"]|| [country isEqualToString: @" South Korea"])
       cell = [tableView dequeueReusableCellWithIdentifier:favCountry];
    else
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier ];
    if (cell == nil)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
  
    cell.textLabel.text = country;

    return cell;
}


- (NSMutableArray *) Countries {
    NSMutableArray *countries = [NSMutableArray arrayWithCapacity: [[NSLocale ISOCountryCodes] count]];
    
    for (NSString *countryCode in [NSLocale ISOCountryCodes])
    {
        NSString *identifier = [NSLocale localeIdentifierFromComponents: [NSDictionary dictionaryWithObject: countryCode forKey: NSLocaleCountryCode]];
        NSString *country = [[NSLocale currentLocale] displayNameForKey: NSLocaleIdentifier value: identifier];
        [countries addObject: country];
    }
    NSArray *sortedCountries = [countries sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    return sortedCountries;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(self.isFiltered)
         _storedCountry  = [self.filteredTableData objectAtIndex:indexPath.row];
    else
         _storedCountry  = [self.allTableData objectAtIndex:indexPath.row];
 
    [self performSegueWithIdentifier:@"viewCountrySegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"viewCountrySegue"])
    {
        [segue.destinationViewController setCountryName:_storedCountry];
    }
}

@end

