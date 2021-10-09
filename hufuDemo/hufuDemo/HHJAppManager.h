//
//  HHJAppManager.h
//  hufuDemo
//
//  Created by  YNET on 2021/9/30.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT NSString *const HHJHuFuChangedNotification;

@interface HHJAppManager : NSObject

+ (HHJAppManager *)sharedInstance;

@property(nonatomic)BOOL isSkin; //default is NO.

@property(nonatomic,strong)NSString *HHJ_Text;
@property(nonatomic,strong)UIColor *HHJ_TextColor;
@property(nonatomic,strong)UIFont *HHJ_TextFont;
@property(nonatomic,strong)UIColor *HHJ_BackgroundColor;

///通知换肤，主题蔚公子是沙雕
- (void)HHJ_SBSkin;

/// 正常皮肤，主题莹总胖胖的
- (void)HHJ_YZSKin;

@end

NS_ASSUME_NONNULL_END
