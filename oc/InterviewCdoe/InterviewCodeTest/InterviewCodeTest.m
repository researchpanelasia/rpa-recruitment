//
//  InterviewCodeTest.m
//  InterviewCodeTest
//
//  Created by Joe on 2022/6/16.
//

#import <XCTest/XCTest.h>
#import "MyGreeterClient.h"

@interface InterviewCodeTest : XCTestCase

@property (nonatomic, strong) MyGreeterClient *testClient;

@end

@implementation InterviewCodeTest

- (void)setUp {
    [super setUp];
    NSLog(@"setUp");
    self.testClient = [[MyGreeterClient alloc] init];
}

- (void)tearDown {
    [super tearDown];
    NSLog(@"tearDown");
    self.testClient = nil;
}

- (void)testInitClient {
    XCTAssertTrue([self.testClient isMemberOfClass:[MyGreeterClient class]], @"create a instance of MyGreeterClient failed");
}

/* You could uncomment codes depend on your real time. */
- (void)testHelloNow {
    NSString *epectation = @"Good morning";
    //    NSString *epectation = @"Good afternoon";
    //    NSString *epectation = @"Good evening";
    XCTAssertEqual(epectation, [self.testClient helloMessage], @"testHelloNow");
}

- (void)testHelloMorning {
    XCTAssertEqual(@"Good morning", [self.testClient helloMessageAtHour:9], @"the result shoule be \"Good morning\"");
}

- (void)testHelloAfternoon {
    XCTAssertEqual(@"Good afternoon", [self.testClient helloMessageAtHour:14], @"the result shoule be \"Good afternoon\"");
}

- (void)testHelloEvening {
    XCTAssertEqual(@"Good evening", [self.testClient helloMessageAtHour:22], @"the result shoule be \"Good evening\"");
}

- (void)testHelloCornerCases {
    XCTAssertEqual(@"Good evening", [self.testClient helloMessageAtHour:6], @"the result shoule be \"Good afternoon\"");
    XCTAssertEqual(@"Good afternoon", [self.testClient helloMessageAtHour:12], @"the result shoule be \"Good afternoon\"");
    XCTAssertEqual(@"Good evening", [self.testClient helloMessageAtHour:18], @"the result shoule be \"Good evening\"");
}

- (void)testHelloHourInvalid {
    XCTAssertThrows([self.testClient helloMessageAtHour:-7], @"HourInvalid should throw exception");
    XCTAssertThrows([self.testClient helloMessageAtHour:25], @"HourInvalid should throw exception");
}

- (void)testPerformanceExample {
    [self measureBlock:^{
        for (NSInteger i = 0; i < 10000; i ++) {
            [self.testClient helloMessage];
        }
    }];
}

@end
