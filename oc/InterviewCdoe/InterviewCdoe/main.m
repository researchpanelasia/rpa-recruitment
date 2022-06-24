//
//  main.m
//  InterviewCdoe
//
//  Created by Joe on 2022/6/15.
//

#import <Foundation/Foundation.h>
#import "MyGreeterClient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        @try {
            MyGreeterClient *client = [[MyGreeterClient alloc] init];
            NSLog(@"%@",[client helloMessage]);
        }
        @catch (NSException *exception) {
            NSLog(@"exception - %@", exception);
        }
        @finally {
            NSLog(@"final");
        }
    }
    return 0;
}
