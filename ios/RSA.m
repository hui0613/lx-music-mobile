//
//  RSA.m
//  LxMusicMobile
//
//  Created by rtt on 2023/10/11.
//

#import "RSA.h"

@implementation RSA

+(NSDictionary *)getKeyPair {
    NSDictionary *keyPairAttributes = @{
        (__bridge id)kSecAttrKeyType: (__bridge id)kSecAttrKeyTypeRSA,
        (__bridge id)kSecAttrKeySizeInBits: @2048
    };

    NSError *error = nil;
    SecKeyRef publicKey, privateKey;

    OSStatus status = SecKeyGeneratePair((__bridge CFDictionaryRef)keyPairAttributes, &publicKey, &privateKey);

    if (status == errSecSuccess) {
        // 密钥对生成成功，你可以在这里返回密钥对或者进行其他处理
        return @{
            @"publicKey": (__bridge_transfer NSData *)SecKeyCopyExternalRepresentation(publicKey, nil),
            @"privateKey": (__bridge_transfer NSData *)SecKeyCopyExternalRepresentation(privateKey, nil)
        };
    } else {
        // 处理错误
        NSLog(@"Error generating RSA key pair: %@", error);
        return nil;
    }
}



+(NSString *)encryptRSAToString:(NSString *)base64 publicKey:(NSString *)publicKey padding:(NSString *)padding{
  NSString *encryptedBase64 = @"";

  @try {
      NSData *publicKeyData = [[NSData alloc] initWithBase64EncodedString:publicKey options:0];

      // 创建SecKeyRef对象
      SecKeyRef publicKeyRef = NULL;
      NSDictionary *keyAttributes = @{
          (id)kSecAttrKeyType: (id)kSecAttrKeyTypeRSA,
          (id)kSecAttrKeyClass: (id)kSecAttrKeyClassPublic,
          (id)kSecAttrKeySizeInBits: @2048 // 修改为你的公钥位数
      };

      CFErrorRef error = NULL;
      publicKeyRef = SecKeyCreateWithData((__bridge CFDataRef)publicKeyData, (__bridge CFDictionaryRef)keyAttributes, &error);

      if (error != NULL) {
          CFRelease(error);
          return encryptedBase64;
      }

      // 使用RSA加密
      NSData *decryptedData = [[NSData alloc] initWithBase64EncodedString:base64 options:0];
      size_t cipherBufferSize = SecKeyGetBlockSize(publicKeyRef);
      uint8_t *cipherBuffer = malloc(cipherBufferSize);

      if (SecKeyEncrypt(publicKeyRef, kSecPaddingPKCS1, decryptedData.bytes, decryptedData.length, cipherBuffer, &cipherBufferSize) == errSecSuccess) {
          NSData *encryptedData = [NSData dataWithBytes:cipherBuffer length:cipherBufferSize];
          encryptedBase64 = [encryptedData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
      }

      free(cipherBuffer);
      CFRelease(publicKeyRef);
  } @catch (NSException *exception) {
      NSLog(@"Exception: %@", exception);
  }

  return encryptedBase64;
  
  
}



@end
