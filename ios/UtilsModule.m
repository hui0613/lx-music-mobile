//
//  CalendarManager.m
//  LxMusicMobile
//
//  Created by rtt on 2023/10/10.
//

#import <Foundation/Foundation.h>
#import "UtilsModule.h"
#import <React/RCTLog.h>
#import <UIKit/UIKit.h>

@implementation UtilsModule

// To export a module named CalendarManager
RCT_EXPORT_MODULE();

// This would name the module AwesomeCalendarManager instead
// RCT_EXPORT_MODULE(AwesomeCalendarManager);
RCT_EXPORT_METHOD(exitApp)
{
  RCTLogInfo(@"Pretending to create an event exitApp");
}

RCT_EXPORT_METHOD(getSupportedAbis: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event getSupportedAbis");
}

RCT_EXPORT_METHOD(installApk: (NSString *)filePath fileProviderAuthority:(NSString *)fileProviderAuthority resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event installApk");
}


RCT_EXPORT_METHOD(screenkeepAwake)
{
  RCTLogInfo(@"screenkeepAwake");
}

RCT_EXPORT_METHOD(screenUnkeepAwake)
{
  RCTLogInfo(@"screenUnkeepAwake");
}

RCT_EXPORT_METHOD(getDeviceName: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"getDeviceName");
}

RCT_EXPORT_METHOD(isNotificationsEnabled: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event");
}

RCT_EXPORT_METHOD(openNotificationPermissionActivity: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event");
}

RCT_EXPORT_METHOD(shareText: (NSString *)shareTitle title:(NSString *)title text:(NSString *)text resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"shareText");
}

RCT_EXPORT_METHOD(writeStringToFile: (NSString *) filePath data:(NSString *)data resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"writeStringToFile");
  resolve(NULL);
}


RCT_EXPORT_METHOD(getStringFromFile: (NSString *)filePath resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"getStringFromFile");
}

RCT_EXPORT_METHOD(getSystemLocales: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"getSystemLocales");
  NSString *currentLanguage = [[NSLocale preferredLanguages] objectAtIndex:0];
  resolve(currentLanguage);
}


RCT_EXPORT_METHOD(getWindowSize: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  // 获取主屏幕
  UIScreen *mainScreen = [UIScreen mainScreen];

  // 获取可用区域大小
  CGRect availableRect = mainScreen.bounds;

  // 可用区域的宽度和高度
  CGFloat availableWidth = CGRectGetWidth(availableRect);
  CGFloat availableHeight = CGRectGetHeight(availableRect);
  
  NSMutableDictionary<NSString *, id>* res = [NSMutableDictionary dictionary];
  
  res[@"width"] = [NSNumber numberWithFloat:availableWidth];
  res[@"heigth"] = [NSNumber numberWithFloat:availableHeight];
  
  resolve(res);
}


RCT_EXPORT_METHOD(listenWindowSizeChanged)
{
  RCTLogInfo(@"listenWindowSizeChanged");
}

@end
