//
//  AKClass.m
//  MyLibrary
//
//  Created by Anton Pomozov on 16.10.13.
//  Copyright (c) 2013 Akademon Ltd. All rights reserved.
//

#import "AKClass.h"
#import "AKConnection.h"

@interface AKClass ()

@property (nonatomic, strong) AKProvider *provider;
@property (nonatomic, strong) AKConnection *connection;
@property (nonatomic, assign) BOOL isConnected;

@end

@implementation AKClass

- (void)connectToProvider:(AKProvider *)provider completionBlock:(void(^)(NSError *))completion {
    [self.connection connectToURL:provider.url completionBlock:completion];
}
- (void)fetchSetOfObjectsFromServer:(NSString *)stringUrl completionBlock:(void(^)(NSArray *, NSError *))completion {
    if (self.isConnected) {
        NSArray *array = @[@"one", @"two"];
        completion(array, nil);
    } else {
        [self connectToProvider:self.provider completionBlock:^(NSError *error){
            if (!error) {
                self.isConnected = YES;
            }
        }];
    }
}

@end
