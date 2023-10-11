//
//  RSA.h
//  LxMusicMobile
//
//  Created by rtt on 2023/10/11.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>

@interface RSA : NSObject

+(NSDictionary<NSString *, id> * _Nullable)getKeyPair;

+(NSString * _Nonnull)encryptRSAToString: (NSString * _Nonnull)base64 publicKey:(NSString * _Nonnull)publicKey padding:(NSString * _Nonnull)padding;

@end
