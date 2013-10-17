//
//  AKClass.h
//  MyLibrary
//
//  Created by Anton Pomozov on 16.10.13.
//  Copyright (c) 2013 Akademon Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKAccessToken : NSObject

@property (nonatomic, copy, readonly) NSString *token;
@property (nonatomic, copy, readonly) NSString *type;
@property (nonatomic, strong, readonly) NSDate *expired;

@end

@interface AKStorage : NSObject

@property (nonatomic, strong, readonly) NSDictionary *data;

@end

@interface AKClass : NSObject

- (void)connectToURL:(NSURL *)url completionBlock:(void(^)(NSError *))completion;
- (void)parseJson:(NSDictionary *)jsonData completionBlock:(void(^)(NSArray *))completion;
- (void)restoreAccessTokenCompletionBlock:(void(^)(AKAccessToken *))completion;
- (void)modifyStoredData:(NSDictionary *)newData;

@end
