//
//  ViewControllerB.m
//  hufuDemo
//
//  Created by  YNET on 2021/9/27.
//

#import "ViewControllerB.h"
#import "UIButton+hufu.h"

@interface ViewControllerB ()

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.button.huanFuText = @"打客服";
}

- (void)dealloc{
    NSLog(@"class: %@ %s", NSStringFromClass([ViewControllerB class]), __FUNCTION__);
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
