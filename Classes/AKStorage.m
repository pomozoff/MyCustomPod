//
//  AKStorage.m
//  Pods
//
//  Created by Anton Pomozov on 17.10.13.
//
//

#import "AKStorage.h"

@interface AKStorage ()

@property (nonatomic, strong) NSDictionary *data;

@end

@implementation AKStorage

+ (instancetype)sharedInstance {
    static dispatch_once_t once;
    static AKStorage *sharedInstance = nil;
    dispatch_once(&once, ^{
        sharedInstance = [[AKStorage alloc] init];
    });
    
    return sharedInstance;
}

- (void)restoreAccessTokenCompletionBlock:(void(^)(AKAccessToken *))completion {
    
}
- (void)modifyStoredData:(NSDictionary *)newData {
    
}

@end
