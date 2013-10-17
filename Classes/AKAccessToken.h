//
//  AKAccessToken.h
//  Pods
//
//  Created by Anton Pomozov on 17.10.13.
//
//

#import <Foundation/Foundation.h>

@interface AKAccessToken : NSObject

@property (nonatomic, copy, readonly) NSString *token;
@property (nonatomic, copy, readonly) NSString *type;
@property (nonatomic, strong, readonly) NSDate *expired;

@end
