//
//  ASHGetmoAppDelegate.h
//  AioriaGetmo
//
//  Created by Gustavo Tagliari on 11/11/2015.
//  Copyright (c) 2015 Gustavo Tagliari. All rights reserved.
//

@import UIKit;

#import "AioriaGetmo/SmartpushSDK/SmartpushSDK.h"

@interface ASHGetmoAppDelegate : UIResponder <UIApplicationDelegate, SmartpushSDKDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
