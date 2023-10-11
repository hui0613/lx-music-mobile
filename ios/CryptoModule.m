//
//  CryptoModule.m
//  LxMusicMobile
//
//  Created by rtt on 2023/10/10.
//

#import <Foundation/Foundation.h>
#import "CryptoModule.h"
#import <React/RCTLog.h>

@implementation CryptoModule

// To export a module named CalendarManager
RCT_EXPORT_MODULE();

// This would name the module AwesomeCalendarManager instead
// RCT_EXPORT_MODULE(AwesomeCalendarManager);
RCT_EXPORT_METHOD(generateRsaKey: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event generateRsaKey");
}

RCT_EXPORT_METHOD(rsaEncrypt: (NSString *)text key:(NSString *)key resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event rsaEncrypt" );
}

RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(rsaEncryptSync: (NSString *)text key:(NSString *)key)
{
  RCTLogInfo(@"Pretending to create an event rsaEncryptSync");
  return @"";
}

RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(rsaDecryptSync: (NSString *)text key:(NSString *)key)
{
  RCTLogInfo(@"Pretending to create an event rsaDecryptSync");
  return @"";
}



RCT_EXPORT_METHOD(aesEncrypt: (NSString *)text key:(NSString *)key resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event aesEncrypt");
}

RCT_EXPORT_METHOD(aesDecrypt: (NSString *)text key:(NSString *)key resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event aesDecrypt");
}



RCT_EXPORT_METHOD(aesEncryptSync: (NSString *)text key:(NSString *)key)
{
  RCTLogInfo(@"Pretending to create an event");
}

RCT_EXPORT_METHOD(aesDecryptSync: (NSString *)text key:(NSString *)key resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event");
}


@end

