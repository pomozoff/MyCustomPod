//
//  AKParser.h
//  Pods
//
//  Created by Anton Pomozov on 17.10.13.
//
//

#import <Foundation/Foundation.h>

@interface AKParser : NSObject

+ (void)parseJson:(NSDictionary *)jsonData completionBlock:(void(^)(NSArray *))completion;

@end
