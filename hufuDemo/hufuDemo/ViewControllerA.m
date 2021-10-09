//
//  ViewControllerA.m
//  hufuDemo
//
//  Created by  YNET on 2021/9/27.
//

#import "ViewControllerA.h"
#import "UILabel+hufu.h"

@interface ViewControllerA ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewControllerA

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label.huanFuText = @"随便哦";
}

- (void)dealloc{
    NSLog(@"class: %@ %s", NSStringFromClass([ViewControllerA class]), __FUNCTION__);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
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
