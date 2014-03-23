//
//  MyAnnotations.h
//  TakeMeWithYou
//
//  Created by rociosev on 3/23/14.
//  Copyright (c) 2014 RocioSPearlHacks. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface MyAnnotations : NSObject<MKAnnotation> {
    CLLocationCoordinate2D coordinate;
    NSString* title;
    NSString* subtitle;
}
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* subtitle;


@end
