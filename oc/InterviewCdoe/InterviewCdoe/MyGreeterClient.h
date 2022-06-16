//
//  MyGreeterClient.h
//  InterviewCdoe
//
//  Created by Joe on 2022/6/16.
//

#import <Foundation/Foundation.h>

#ifndef MyGreeterClient_h
#define MyGreeterClient_h

@interface MyGreeterClient : NSObject

- (NSString *)helloMessage;

- (NSString *)helloMessageAtHour:(NSInteger)hour;

@end


#endif /* MyGreeterClient_h */
