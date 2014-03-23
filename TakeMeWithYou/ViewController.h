//
//  ViewController.h
//  TakeMeWithYou
//
//  Created by rociosev on 3/22/14.
//  Copyright (c) 2014 RocioSPearlHacks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController <MKMapViewDelegate>
@property (nonatomic, retain) IBOutlet MKMapView* mapView;

@end

