//
//  HHJAppManager.m
//  hufuDemo
//
//  Created by  YNET on 2021/9/30.
//

#import "HHJAppManager.h"

NSString * const HHJHuFuChangedNotification = @"HHJHuFuChangedNotification";

@implementation HHJAppManager

+ (HHJAppManager *)sharedInstance
{
    static HHJAppManager *Instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Instance = [[self alloc] init];
        Instance.isSkin = NO;
    });
    return Instance;
}

///通知换肤，主题蔚公子是沙雕
- (void)HHJ_SBSkin{
    [HHJAppManager sharedInstance].HHJ_Text = @"蔚公子纱布---纱布";
    [HHJAppManager sharedInstance].HHJ_BackgroundColor = [UIColor greenColor];
    [HHJAppManager sharedInstance].HHJ_TextColor = [UIColor whiteColor];
    _isSkin = YES;
    [[NSNotificationCenter defaultCenter] postNotificationName:HHJHuFuChangedNotification object:nil];
}

/// 正常皮肤，主题莹总胖胖的
- (void)HHJ_YZSKin{
    _isSkin = NO;
    [[NSNotificationCenter defaultCenter] postNotificationName:HHJHuFuChangedNotification object:nil];
}


@end
