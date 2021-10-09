//
//  UIButton+hufu.m
//  hufuDemo
//
//  Created by  YNET on 2021/9/27.
//

#import "UIButton+hufu.h"
#import "NSObject+hufu.h"
#import <objc/runtime.h>
#import "HHJAppManager.h"

static NSString *cusTomtextKey = @"cusTomUIButtontextKey";

@implementation UIButton (hufu)

- (void)HHJ_didChanged{
    [self buttonSkin];
    [super HHJ_didChanged];
}

- (void)buttonSkin{
    if ([HHJAppManager sharedInstance].HHJ_Text) {
        [self setTitle:[HHJAppManager sharedInstance].HHJ_Text forState:UIControlStateNormal];
    }
    if ([HHJAppManager sharedInstance].HHJ_TextFont) {
        self.titleLabel.font = [HHJAppManager sharedInstance].HHJ_TextFont;
    }
    if ([HHJAppManager sharedInstance].HHJ_TextColor) {
        [self setTitleColor:[HHJAppManager sharedInstance].HHJ_TextColor forState:UIControlStateNormal];
    }
    if ([HHJAppManager sharedInstance].HHJ_BackgroundColor) {
        self.backgroundColor = [HHJAppManager sharedInstance].HHJ_BackgroundColor;
    }
}

- (void)setHuanFuText:(NSString *)huanFuText{
    if ([HHJAppManager sharedInstance].isSkin) {
        [self buttonSkin];
    }else{
        [self setTitle:huanFuText forState:UIControlStateNormal];
    }
    objc_setAssociatedObject(self, &cusTomtextKey, huanFuText, OBJC_ASSOCIATION_COPY);
    [self HHJ_registChangedNotification];
}

- (NSString *)huanFuText{
    return objc_getAssociatedObject(self, &cusTomtextKey);
}


@end
