//
//  NSObject+hufu.m
//  hufuDemo
//
//  Created by  YNET on 2021/9/27.
//

#import "NSObject+hufu.h"
#import <objc/runtime.h>
#import "HHJAppManager.h"

static NSString *const kWjRegistChangedHufuNotification;

@interface NSObject ()

@property (nonatomic, copy) void(^HHJ_changeBlock)(id observer);

@end

@implementation NSObject (hufu)

- (void)HHJ_registChangedNotification{
    NSNumber *hasRegist = objc_getAssociatedObject(self, &kWjRegistChangedHufuNotification);
    if (hasRegist) {
        return;
    }
    objc_setAssociatedObject(self, &kWjRegistChangedHufuNotification, @(YES), OBJC_ASSOCIATION_COPY_NONATOMIC);
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(HHJ_didChanged) name:HHJHuFuChangedNotification object:nil];
    __weak typeof(self) weakSelf = self;
    self.HHJ_changeBlock = ^(id observer) {
        [[NSNotificationCenter defaultCenter] removeObserver:weakSelf];
    };
        
}

- (void)HHJ_didChanged{
    if (self.HHJ_changeBlock) {
        __weak typeof(self) weakSelf = self;
        self.HHJ_changeBlock(weakSelf);
    }
}

- (void)setHHJ_changeBlock:(void (^)(void))block {
    objc_setAssociatedObject(self, @selector(HHJ_changeBlock), block, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(void))HHJ_changeBlock {
    return objc_getAssociatedObject(self, @selector(HHJ_changeBlock));
}


@end
