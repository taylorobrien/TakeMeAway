//
//  MapOfPlaceVisitedViewController.h
//  TakeMeWithYou
//
//  Created by rociosev on 3/22/14.
//  Copyright (c) 2014 RocioSPearlHacks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapOfPlaceVisitedViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *usLabel;


- (IBAction)handlePan : (UIPanGestureRecognizer *)recognizer;
//- (IBAction)handleRotate:(UIRotationGestureRecognizer *)recognizer;

@end
