//
//  main.m
//  InterviewCdoe
//
//  Created by 杨守全 on 2022/6/15.
//

#import <Foundation/Foundation.h>
#import "MyGreeterClient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        @try {
            NSLog(@"%@",MyGreeterClient.helloMessage);
        }
        @catch (NSException *exception) {
            //打印exception输出：
            //exception.name = NSInvalidArgumentException
            //exception.reason = *** -[NSArrayM insertObject:atIndex:]: object cannot be nil
            //还可以通过exception.callStackSymbols查看函数堆栈，发现对应异常错误发生在哪个类中的哪一行
            NSLog(@"error - %@", exception);
        }
        @finally {
            NSLog(@"final");
        }
    }
    return 0;
}
