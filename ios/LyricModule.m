//
//  LyricModule.m
//  LxMusicMobile
//
//  Created by rtt on 2023/10/10.
//

#import <Foundation/Foundation.h>
#import "LyricModule.h"
#import <React/RCTLog.h>

@implementation LyricModule

// To export a module named CalendarManager
RCT_EXPORT_MODULE();

// This would name the module AwesomeCalendarManager instead
// RCT_EXPORT_MODULE(AwesomeCalendarManager);
RCT_EXPORT_METHOD(showLyric: (NSDictionary <NSString *, id> *)data resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event showLyric");
}

RCT_EXPORT_METHOD(hideLyric: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event hideLyric");
}

RCT_EXPORT_METHOD(play: (NSNumber *)time resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event play");
}

RCT_EXPORT_METHOD(pause: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event pause");
}


RCT_EXPORT_METHOD(setLyric: (NSString *)lyric translation:(NSString *)translation romalrc:(NSString *)romalrc resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setLyric");
}

RCT_EXPORT_METHOD(setPlaybackRate: (NSNumber * _Nonnull)rate resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setPlaybackRate");
  resolve(NULL);
}

RCT_EXPORT_METHOD(toggleTranslation: (BOOL) isShowTranslation resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event toggleTranslation");
  resolve(NULL);
}


RCT_EXPORT_METHOD(toggleRoma: (BOOL)isShowRoma resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event toggleRoma");
  resolve(NULL);
}


RCT_EXPORT_METHOD(toggleLock: (BOOL)isLock resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event toggleLock");
}

RCT_EXPORT_METHOD(setColor: (NSString *)unplayColor playedColor:(NSString *)playedColor shadowColor:(NSString *)shadowColor resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setColor");
}


RCT_EXPORT_METHOD(setAlpha: (NSNumber *)alpha resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setAlpha");
}


RCT_EXPORT_METHOD(setTextSize: (NSNumber *)size resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setTextSize");
}


RCT_EXPORT_METHOD(setShowToggleAnima: (BOOL)isShowToggleAnima resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setShowToggleAnima");
}


RCT_EXPORT_METHOD(setSingleLine: (BOOL)isSingleLine resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setSingleLine" );
}


RCT_EXPORT_METHOD(setPosition: (NSNumber *)x y:(NSNumber *)y resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setPosition");
}


RCT_EXPORT_METHOD(setMaxLineNum: (NSNumber *)maxLineNum resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setMaxLineNum");
}


RCT_EXPORT_METHOD(setWidth: (NSNumber *)width resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setWidth");
}

RCT_EXPORT_METHOD(setLyricTextPosition: (NSString *)textX textY:(NSString *)textY resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event setLyricTextPosition");
}


RCT_EXPORT_METHOD(checkOverlayPermission: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event checkOverlayPermission");
}


RCT_EXPORT_METHOD(openOverlayPermissionActivity: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event openOverlayPermissionActivity");
}

RCT_EXPORT_METHOD(addListener: (NSString *)eventName){
  
}

RCT_EXPORT_METHOD(removeListeners: (NSNumber * _Nonnull) count){
  
}


@end

