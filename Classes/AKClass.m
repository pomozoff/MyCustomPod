//
//  AKClass.m
//  MyLibrary
//
//  Created by Anton Pomozov on 16.10.13.
//  Copyright (c) 2013 Akademon Ltd. All rights reserved.
//

#import "AKClass.h"

@implementation AKClass

- (void)connectToURL:(NSURL *)url completionBlock:(void(^)(NSError *))completion {
    
}
- (void)parseJson:(NSDictionary *)jsonData completionBlock:(void(^)(NSArray *))completion {
    
}
- (void)restoreAccessTokenCompletionBlock:(void(^)(AKAccessToken *))completion {
    
}
- (void)modifyStoredData:(NSDictionary *)newData {
    
}
- (void)connectToProvider:(NSProvider *)provider completionBlock:(void(^)(NSError *))completion {
    
}
- (void)fetchSetOfObjectsFromServer:(NSString *)stringUrl completionBlock:(void(^)(NSArray *, NSError *))completion {
    
}

@end

@implementation AKAccessToken

@end

@implementation AKStorage

@end
