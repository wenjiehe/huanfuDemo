//
//  UILabel+hufu.m
//  hufuDemo
//
//  Created by  YNET on 2021/9/27.
//

#import "UILabel+hufu.h"
#import <objc/runtime.h>
#import "NSObject+hufu.h"
#import "HHJAppManager.h"

static NSString *cusTomtextKey = @"cusTomtextKey";

@implementation UILabel (hufu)

- (void)HHJ_didChanged{
    [self labelSkin];
    [super HHJ_didChanged];
}

- (void)labelSkin{
    if ([HHJAppManager sharedInstance].HHJ_Text) {
        self.text = [HHJAppManager sharedInstance].HHJ_Text;
    }
    if ([HHJAppManager sharedInstance].HHJ_TextFont) {
        self.font = [HHJAppManager sharedInstance].HHJ_TextFont;
    }
    if ([HHJAppManager sharedInstance].HHJ_TextColor) {
        self.textColor = [HHJAppManager sharedInstance].HHJ_TextColor;
    }
    if ([HHJAppManager sharedInstance].HHJ_BackgroundColor) {
        self.backgroundColor = [HHJAppManager sharedInstance].HHJ_BackgroundColor;
    }
}

- (void)setHuanFuText:(NSString *)huanFuText{
    if ([HHJAppManager sharedInstance].isSkin) {
        [self labelSkin];
    }else{
        self.text = huanFuText;
    }
    objc_setAssociatedObject(self, &cusTomtextKey, huanFuText, OBJC_ASSOCIATION_COPY);
    [self HHJ_registChangedNotification];
}

- (NSString *)huanFuText{
    return objc_getAssociatedObject(self, &cusTomtextKey);
}



@end
