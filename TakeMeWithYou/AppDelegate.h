//
//  AppDelegate.h
//  TakeMeWithYou
//
//  Created by rociosev on 3/22/14.
//  Copyright (c) 2014 RocioSPearlHacks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,AVAudioPlayerDelegate> {
    AVAudioPlayer *audioPlayer1;
}

@property (strong, nonatomic)UIWindow *window;
@end

//@interface SocialSharingVC : UIViewController


//@end
