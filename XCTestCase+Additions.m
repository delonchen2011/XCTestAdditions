//
//  XCTestCase+Additions.m
//  Work2017
//
//  Created by chendailong2014@126.com on 2017/3/24.
//  Copyright © 2017年 DMapler. All rights reserved.
//

#import "XCTestCase+Additions.h"

@implementation XCTestCase (Additions)

- (void)waitForAsyncTest:(NSInteger)delay block:(void(^)(void(^)()))block
{
    __block BOOL waitting = YES;
    void (^finished)() = ^{waitting = NO;};
    block(finished);
    
    NSDate *loopUntil = [NSDate dateWithTimeIntervalSinceNow:delay];
    while (waitting && [loopUntil timeIntervalSinceNow] > 0)
    {
        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode
                                 beforeDate:loopUntil];
    }
}

@end
