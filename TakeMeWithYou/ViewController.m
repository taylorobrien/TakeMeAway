//
//  ViewController.m
//  TakeMeWithYou
//
//  Created by rociosev on 3/22/14.
//  Copyright (c) 2014 RocioSPearlHacks. All rights reserved.
//

#import "ViewController.h"
#import "MyAnnotations.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *PealHacklabel;


@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CLLocation *userLoc = self.mapView.userLocation.location;
    CLLocationCoordinate2D userCoordinate = userLoc.coordinate;
	NSLog(@"user latitude = %f",userCoordinate.latitude);
	NSLog(@"user longitude = %f",userCoordinate.longitude);
	self.mapView.delegate=self;
    NSMutableArray* annotations=[[NSMutableArray alloc] init];
	
	CLLocationCoordinate2D theCoordinate1;
    theCoordinate1.latitude = -34.6158527;
    theCoordinate1.longitude = -58.4332985;
	
	CLLocationCoordinate2D theCoordinate2;
    theCoordinate2.latitude = 38.8951;
    theCoordinate2.longitude = -77.0367;
	
	CLLocationCoordinate2D theCoordinate3;
    theCoordinate3.latitude = 41.9;
    theCoordinate3.longitude = 12.5;
	
	CLLocationCoordinate2D theCoordinate4;
    theCoordinate4.latitude = -32.7333;
    theCoordinate4.longitude = -53.65;

	CLLocationCoordinate2D theCoordinate5;
    theCoordinate5.latitude = -12.0553442;
    theCoordinate5.longitude = -77.0451853;
   
    CLLocationCoordinate2D theCoordinate6;
    theCoordinate6.latitude = 37.5665;
    theCoordinate6.longitude = 126.9780;

	MyAnnotations* myAnnotations1=[[MyAnnotations alloc] init];
	
	myAnnotations1.coordinate=theCoordinate1;
	myAnnotations1.title=@"Buenos Aires, ";
	myAnnotations1.subtitle=@"Argentina";
	
	MyAnnotations* myAnnotations2=[[MyAnnotations alloc] init];
	
	myAnnotations2.coordinate=theCoordinate2;
	myAnnotations2.title=@"Washington D.C., ";
	myAnnotations2.subtitle=@"U.S.A.";
	
	MyAnnotations* myAnnotations3=[[MyAnnotations alloc] init];
	
	myAnnotations3.coordinate=theCoordinate3;
	myAnnotations3.title=@"Rome, ";
	myAnnotations3.subtitle=@"Italy";
	
	MyAnnotations* myAnnotations4=[[MyAnnotations alloc] init];
	
	myAnnotations4.coordinate=theCoordinate4;
	myAnnotations4.title=@"Montevideo, ";
	myAnnotations4.subtitle=@"Uruguay";
   
    MyAnnotations* myAnnotations5=[[MyAnnotations alloc] init];
    myAnnotations5.coordinate=theCoordinate5;
	myAnnotations5.title=@"Lima, ";
	myAnnotations5.subtitle=@"Peru";
   
    MyAnnotations* myAnnotations6=[[MyAnnotations alloc] init];
    myAnnotations6.coordinate=theCoordinate6;
	myAnnotations6.title=@"Seoul, ";
	myAnnotations6.subtitle=@"South Korea";

	[self.mapView addAnnotation:myAnnotations1];
	[self.mapView addAnnotation:myAnnotations2];
	[self.mapView addAnnotation:myAnnotations3];
	[self.mapView addAnnotation:myAnnotations4];
    [self.mapView addAnnotation:myAnnotations5];
	[self.mapView addAnnotation:myAnnotations6];
    
	[annotations addObject:myAnnotations1];
	[annotations addObject:myAnnotations2];
	[annotations addObject:myAnnotations3];
	[annotations addObject:myAnnotations4];
    [annotations addObject:myAnnotations5];
    [annotations addObject:myAnnotations6];
    
    NSLog(@"%d",[annotations count]);
}
	- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ChangeTittleButtonTap:(id)sender {
    self.PealHacklabel.textColor = [UIColor purpleColor];
}

@end