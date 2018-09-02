//
//  ViewController.m
//  changeIcon
//
//  Created by mc on 2018/9/2.
//  Copyright © 2018年 jiucangtouzi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeRainIcon:(id)sender {
    NSLog(@"更换图标");
    [self changeAppIconWithName:@"rain"];
}
- (IBAction)changeSnowIcon:(id)sender {
    NSLog(@"更换图标");
    [self changeAppIconWithName:@"snow"];
}
- (void)changeAppIconWithName:(NSString *)iconName {
    if (![[UIApplication sharedApplication] supportsAlternateIcons]) {
        return;
    }
    
    if ([iconName isEqualToString:@""]) {
        iconName = nil;
    }
    [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"更换app图标发生错误了 ： %@",error);
        }
    }];
}

@end
