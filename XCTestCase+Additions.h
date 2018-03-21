//
//  XCTestCase+Additions.h
//  Work2017
//
//  Created by chendailong2014@126.com on 2017/3/24.
//  Copyright © 2017年 DMapler. All rights reserved.
//

#import <XCTest/XCTest.h>

NS_ASSUME_NONNULL_BEGIN

@interface XCTestCase (Additions)
- (void)waitForAsyncTest:(NSInteger)delay block:(void(^)(void(^)()))block;
@end

NS_ASSUME_NONNULL_END
