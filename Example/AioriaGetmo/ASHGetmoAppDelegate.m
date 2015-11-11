//
//  ASHGetmoAppDelegate.m
//  AioriaGetmo
//
//  Created by Gustavo Tagliari on 11/11/2015.
//  Copyright (c) 2015 Gustavo Tagliari. All rights reserved.
//

#import "ASHGetmoAppDelegate.h"

@implementation ASHGetmoAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    SmartpushSDK *shared = [SmartpushSDK sharedInstance];
    shared.delegate = self;
    [shared didFinishLaunchingWithOptions:launchOptions];
    [shared registerForPushNotifications];
    
    return YES;
}

#pragma mark - push
- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    [[SmartpushSDK sharedInstance] didFailToRegisterForRemoteNotificationsWithError:error];
#if DEBUG
    NSLog(@"Falhou no registro do push: %@", error);
#endif
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    SmartpushSDK *smartpushSDK = [SmartpushSDK sharedInstance];
    [smartpushSDK didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
    [smartpushSDK setValue:@"1" forTag:@"TODOS"];
#if DEBUG
    NSLog(@"Registrou push: %@", deviceToken);
#endif
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    [[SmartpushSDK sharedInstance] didReceiveRemoteNotification:userInfo];
#if DEBUG
    NSLog(@"Recebeu push: %@", userInfo);
#endif
}

- (void)application:(UIApplication *)application didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings {
    [[SmartpushSDK sharedInstance] didRegisterUserNotificationSettings:notificationSettings];
#if DEBUG
    NSLog(@"notifications settings: %@", notificationSettings);
#endif
}

- (void)onPushAccepted:(NSDictionary *)push {
#if DEBUG
    NSLog(@"Push: %@", push);
#endif
}

@end
