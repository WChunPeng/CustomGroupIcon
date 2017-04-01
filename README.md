# -
一个模仿微信群聊头像的demo，多图拼接，
之前做过一个集成环信的项目，里面涉及到群聊部分，老大要求是做成微信群聊那种头像，自己写了个demo [模仿微信群聊头像](https://github.com/WChunPeng/-)

使用方法很简单，把 UIImage+Addtions 这个类拖到项目中，在需要显示的地方调用：

1.加载网络图片使用此方法
```
    NSURL *icon1URL = [NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/3816723-e182f6da029b3e7d.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/100"] ;
    NSURL *icon2URL = [NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/3816723-023e66be11a2e94b.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/100"];
    NSURL *icon3URL = [NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/3816723-d7ece9dba73d4953.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/100"] ;
    NSURL *icon4URL = [NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/3816723-e08bf975aadbfdd4.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/100"] ;
    NSURL *icon5URL = [NSURL URLWithString:@"http://upload-images.jianshu.io/upload_images/3816723-13271b280c0e5fd4.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/100"] ;

    NSArray *iconItemsArr = @[icon1URL,icon2URL,icon3URL,icon4URL,icon5URL];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(150, 150, 100, 100)];
    imageView.image = [UIImage groupIconWithURLArray:iconItemsArr bgColor:[UIColor groupTableViewBackgroundColor]];
    [self.view addSubview:imageView];

```
2.加载本地图片使用（一般用不到加载本地的图片）：
```
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    imageView.image = [UIImage groupIconWith:@[@"user.png", @"user1.jpg", @"user2.jpg", @"user.png", @"user1.jpg", @"user.png", @"user1.jpg", @"user1.jpg", @"user1.jpg", @"user1.jpg"] bgColor:[UIColor groupTableViewBackgroundColor]];
    [self.view addSubview:imageView];
```
3.效果图：

![效果图](http://upload-images.jianshu.io/upload_images/3816723-4f9dae2498b721c6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/400)
