//
//  ViewController.m
//  GroupChatIcon
//
//  Created by Admin on 15/07/18.
//  Copyright © 2015年 Ad. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Addtions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 2 - 9个显示，超过9的忽略
    
    
    NSURL *icon1URL = [NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/3816723-e182f6da029b3e7d.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/100"] ;
    NSURL *icon2URL = [NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/3816723-023e66be11a2e94b.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/100"];
    NSURL *icon3URL = [NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/3816723-d7ece9dba73d4953.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/100"] ;
    NSURL *icon4URL = [NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/3816723-e08bf975aadbfdd4.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/100"] ;
    NSURL *icon5URL = [NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/3816723-13271b280c0e5fd4.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/100"] ;

    NSArray *iconItemsArr = @[icon1URL,icon2URL,icon3URL,icon4URL,icon5URL];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(150, 150, 100, 100)];
    imageView.image = [UIImage groupIconWithURLArray:iconItemsArr bgColor:[UIColor groupTableViewBackgroundColor]];
    [self.view addSubview:imageView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
