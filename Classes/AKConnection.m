//
//  AKConnection.m
//  Pods
//
//  Created by Anton Pomozov on 17.10.13.
//
//

#import "AKConnection.h"
#import "AKStorage.h"
#import "AKParser.h"

@implementation AKConnection

- (void)connectToURL:(NSURL *)url completionBlock:(void(^)(NSError *))completion {
    [[AKStorage sharedInstance] restoreAccessTokenCompletionBlock:^(AKAccessToken *accessToken) {
        // Connected to server using access token, got NSDictionary
        NSDictionary *someJson = @{};
        
        [AKParser parseJson:someJson completionBlock:^(NSArray *objects) {
            completion(nil);
        }];
        
        [[AKStorage sharedInstance] modifyStoredData:someJson];
    }];
}

@end
