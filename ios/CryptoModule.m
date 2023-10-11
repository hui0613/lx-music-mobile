//
//  CryptoModule.m
//  LxMusicMobile
//
//  Created by rtt on 2023/10/10.
//

#import <Foundation/Foundation.h>
#import "CryptoModule.h"
#import <React/RCTLog.h>
#import "RSA.h"

@implementation CryptoModule

// To export a module named CalendarManager
RCT_EXPORT_MODULE();

// This would name the module AwesomeCalendarManager instead
// RCT_EXPORT_MODULE(AwesomeCalendarManager);
RCT_EXPORT_METHOD(generateRsaKey: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  NSDictionary<NSString *, id>* kp = [RSA getKeyPair];
  
  NSString *publicKey = kp[@"publicKey"];
  
  // 将Java Base64编码字符串转换为NSData
  NSData *publicKeyData = [[NSData alloc] initWithBase64EncodedString:publicKey options:0];

  // 将NSData转换为Base64编码字符串（Objective-C中）
  NSString *publicKeyBase64 = [publicKeyData base64EncodedStringWithOptions:0];
  
  NSString *privateKey = kp[@"privateKey"];
  
  // 将Java Base64编码的RSA私钥字符串转换为NSData
  NSData *privateKeyData = [[NSData alloc] initWithBase64EncodedString:privateKey options:0];

  // 将NSData转换为SecKeyRef（Objective-C中）
  SecKeyRef privateKeyRef = [self privateKeyFromData:privateKeyData];

  // 将SecKeyRef转换为Base64编码的字符串（Objective-C中）
  NSString *privateKeyBase64 = [self base64StringForSecKeyRef:privateKeyRef];

  NSMutableDictionary<NSString *, NSString *> *res = [NSMutableDictionary dictionary];
  
  res[@"publicKey"] = publicKeyBase64;
  res[@"privateKey"] = privateKeyBase64;
  
  resolve(res);
  
}

-(SecKeyRef)privateKeyFromData:(NSData *)privateKeyData {
    NSDictionary *keyAttributes = @{
        (id)kSecAttrKeyType: (id)kSecAttrKeyTypeRSA,
        (id)kSecAttrKeyClass: (id)kSecAttrKeyClassPrivate,
    };

    CFErrorRef error = NULL;
    SecKeyRef privateKey = SecKeyCreateWithData((__bridge CFDataRef)privateKeyData, (__bridge CFDictionaryRef)keyAttributes, &error);

    if (error != NULL) {
        CFRelease(error);
        return NULL;
    }

    return privateKey;
}

-(NSString *)base64StringForSecKeyRef:(SecKeyRef)keyRef {
    NSData *keyData = CFBridgingRelease(SecKeyCopyExternalRepresentation(keyRef, NULL));
    NSString *base64String = [keyData base64EncodedStringWithOptions:0];
    return base64String;
}


RCT_EXPORT_METHOD(rsaEncrypt: (NSString *)text key:(NSString *)key padding:(NSString *)padding resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  resolve([RSA encryptRSAToString:text publicKey:key padding:padding]);
}

RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(rsaEncryptSync: (NSString *)text key:(NSString *)key)
{
  RCTLogInfo(@"Pretending to create an event rsaEncryptSync rsaEncryptSync");
  return @"";
}

RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(rsaDecryptSync: (NSString *)text key:(NSString *)key)
{
  RCTLogInfo(@"Pretending to create an event rsaDecryptSync rsaEncryptSync");
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
  RCTLogInfo(@"Pretending to create an event aesEncryptSync");
}

RCT_EXPORT_METHOD(aesDecryptSync: (NSString *)text key:(NSString *)key resolve:(RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  RCTLogInfo(@"Pretending to create an event aesDecryptSync");
}


@end

