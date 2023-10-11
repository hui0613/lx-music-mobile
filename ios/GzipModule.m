//
//  GzipModule.m
//  LxMusicMobile
//
//  Created by rtt on 2023/10/10.
//

#import <Foundation/Foundation.h>
#import "GzipModule.h"
#import <React/RCTLog.h>

@implementation GzipModule

// To export a module named CalendarManager
RCT_EXPORT_MODULE();

// This would name the module AwesomeCalendarManager instead
// RCT_EXPORT_MODULE(AwesomeCalendarManager);
RCT_EXPORT_METHOD(gzipFile: (NSString *)filePath destPath:(NSString *) destPath force:(BOOL)force resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event");
}

RCT_EXPORT_METHOD(unGzipFile: (NSString *)filePath destPath:(NSString *) destPath force:(BOOL)force resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event");
}



RCT_EXPORT_METHOD(gzipStringToBase64: (NSString *)data resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event");
}

RCT_EXPORT_METHOD(unGzipFromBase64: (NSString *)data resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event");
}

@end
