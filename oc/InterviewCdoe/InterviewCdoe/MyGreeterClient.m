//
//  MyGreeterClient.m
//  InterviewCdoe
//
//  Created by Joe on 2022/6/16.
//

#import "MyGreeterClient.h"

@implementation MyGreeterClient

- (NSString *)helloMessage {
    NSCalendarIdentifier defaultID = [NSCalendar currentCalendar].calendarIdentifier;
    return [self helloMessageByCalendarIdentifier:defaultID];
}

- (NSString *)helloMessageByCalendarIdentifier:(NSCalendarIdentifier)identifier {
    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:identifier];
    if (!calendar) {
        @throw [[NSException alloc] initWithName:@"CalendarIdentifierInvalidException" reason:[NSString stringWithFormat:@"\"CalendarIdentifier\"--%@ invalid ",identifier] userInfo:nil];
    }
    NSDate *now = [NSDate date];
    NSInteger hour = [calendar component:NSCalendarUnitHour fromDate:now];
    NSString *msg = [self helloMessageAtHour:hour];
    return msg;
}

/* core */
- (NSString *)helloMessageAtHour:(NSInteger)hour {
    NSString *msg;
    if (hour > 24 || hour < 0) {
        @throw [[NSException alloc] initWithName:@"HourInvalidException" reason:[NSString stringWithFormat:@"\"Hour\" %zd invalid ",hour] userInfo:nil];
    }
    if (hour > 6 && hour < 12) {
        msg = @"Good morning";
    } else if (hour >= 12 && hour < 18) {
        msg = @"Good afternoon";
    } else  {
        msg = @"Good evening";
    }
    return msg;
}

@end
