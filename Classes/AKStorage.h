//
//  AKStorage.h
//  Pods
//
//  Created by Anton Pomozov on 17.10.13.
//
//

#import <Foundation/Foundation.h>
#import "AKAccessToken.h"

@interface AKStorage : NSObject

@property (nonatomic, strong, readonly) NSDictionary *data;

+ (instancetype)sharedInstance;

- (void)restoreAccessTokenCompletionBlock:(void(^)(AKAccessToken *))completion;
- (void)modifyStoredData:(NSDictionary *)newData;

@end
