//
//  TrendingViewController.m
//  TakeMeAway
//
//  Created by rociosev on 3/23/14.
//  Copyright (c) 2014 RocioSPearlHacks. All rights reserved.
//

#import "TrendingViewController.h"

@interface TrendingViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *WebViewTrending;

@end

@implementation TrendingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *address = [NSString stringWithFormat:@"http://www.oninstagram.com/insta%@",self.countryName];
      // Build the url and loadRequest
      [self.WebViewTrending loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:address]]];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
