//
//  ViewControllerC.m
//  hufuDemo
//
//  Created by  YNET on 2021/9/27.
//

#import "ViewControllerC.h"
#import "HHJAppManager.h"

@interface ViewControllerC ()

@end

@implementation ViewControllerC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)dealloc{
    NSLog(@"class: %@ %s", NSStringFromClass([ViewControllerC class]), __FUNCTION__);
}

- (IBAction)hufuAction:(id)sender {
    //发送蔚公子换肤通知
    [[HHJAppManager sharedInstance] HHJ_SBSkin];
}

- (IBAction)fontAction:(id)sender {
    //发送莹总正常换肤通知
    [[HHJAppManager sharedInstance] HHJ_YZSKin];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
