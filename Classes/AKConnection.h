//
//  AKConnection.h
//  Pods
//
//  Created by Anton Pomozov on 17.10.13.
//
//

#import <Foundation/Foundation.h>

@interface AKConnection : NSObject

- (void)connectToURL:(NSURL *)url completionBlock:(void(^)(NSError *))completion;

@end
