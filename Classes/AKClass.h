//
//  AKClass.h
//  MyLibrary
//
//  Created by Anton Pomozov on 16.10.13.
//  Copyright (c) 2013 Akademon Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AKProvider.h"

@interface AKClass : NSObject

- (void)connectToProvider:(AKProvider *)provider completionBlock:(void(^)(NSError *))completion;
- (void)fetchSetOfObjectsFromServer:(NSString *)stringUrl completionBlock:(void(^)(NSArray *, NSError *))completion;

@end
