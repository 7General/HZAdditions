# HZAdditions

[![CI Status](https://img.shields.io/travis/wanghuizhou21@163.com/HZAdditions.svg?style=flat)](https://travis-ci.org/wanghuizhou21@163.com/HZAdditions)
[![Version](https://img.shields.io/cocoapods/v/HZAdditions.svg?style=flat)](https://cocoapods.org/pods/HZAdditions)
[![License](https://img.shields.io/cocoapods/l/HZAdditions.svg?style=flat)](https://cocoapods.org/pods/HZAdditions)
[![Platform](https://img.shields.io/cocoapods/p/HZAdditions.svg?style=flat)](https://cocoapods.org/pods/HZAdditions)


## Example-HZAdditions
* An easy way to use PUSH-Additions
* 自定义的各种工具类（纯手工打造）
* 各种属性各种用

## 使用的时候首先添加头文件
* #import "Additions.h"

* 可使用cocoapods安装
最新的如下
```ruby
-> HZAdditions (1.0.6)
An easy way to use HZ-show-Additions
pod 'HZAdditions', '~> 1.0.6'
- Homepage: https://github.com/7General/HZAdditions
- Source:   https://github.com/7General/HZAdditions.git
- Versions: 1.0.6, 1.0.4, 1.0.3, 1.0.2, 1.0.1 [master repo]

```


请使用最新的版本安装，目前可使用
```ruby
pod 'HZAdditions', '~> 1.0.6'
```

## 功能列表介绍
* NSString相关属性功能介绍

#时间戳转换
```objc
NSString * timeCuo = @"1464056448";
NSLog(@"-----%@",timeCuo.tranclTime);
```
【使用该方法的时候请注意，大中华帝国和美帝国有8个小时的时区差，在改方法中已经预留】

#和当前时间对比，计算时间差，月、日、时、分、秒
```objc
NSString * timeCuo = @"1464056448";
NSLog(@"-----%@",timeCuo.tranclTime.DefaultCompareCurrentTime);
```

* 1:视图viewwillappear从小到大动画

```ruby
/**
*  页面加载动画
*
*  @param animated <#animated description#>
*/
-(void)viewWillAppear:(BOOL)animated {
[super viewWillAppear:animated];
[self.view appear];
}
```
* 2:全新的button属性
```ruby
UIButton * loading = [UIButton buttonWithType:UIButtonTypeCustom];
[loading setBackgroundColor: [UIColor grayColor]];
[loading setTitle:@"显示消息" forState:UIControlStateNormal];
// 设置动态添加的新的titleName属性
[loading setTitleName:@"titleName"];
// 设置动态添加的新的OrderStr属性
[loading setOrderStr:12];
[loading addTarget:self action:@selector(loadClick:) forControlEvents:UIControlEventTouchUpInside];
loading.frame = CGRectMake(10, 100, 90, 40);
[self.view addSubview:loading];
// 设置不同状态下的背景色
[loading setBackgroundColor:[UIColor redColor] forState:UIControlStateNormal];

```
* 3:判断文字是否为空
```ruby
// 判断文字是否为空
NSString * emptyStr = @"111";
BOOL isEmpty = emptyStr.isEmptyOrWhitespace;
NSLog(@"===>>>isEmpty%d",isEmpty);

```
* 4:url处理
```ruby
// 替换url连接地址 做处理
NSString * urlCode = @"?id = 12 && count = 15";
NSDictionary * addQuary = @{@"url":urlCode};
NSString * url =    [urlCode stringByAddingQueryDictionary:addQuary];
```
* 5:计算文字高度
```ruby
NSString * text = @"住院好几天了。昨天刚安上无线网卡，写了半天笔记结果破输入法死机白忙活了，还得重搞。";
CGSize  textSize = [text heightWithFont:[UIFont systemFontOfSize:16] width:120];
NSLog(@"计算出文字高度====%f",textSize.height);
```
* 6:快速处理MD5
```ruby
NSString * md5Str = @"admin";
NSLog(@"MD5计算之后---%@",md5Str.md5Hash);
```

* 7:查找替换文本中的空格
```ruby
NSString * exchangStr = @"中 国 人 名 解 放 军";
NSLog(@"----替换之后<<<<：%@",[exchangStr replacedWhiteSpacsByString:@"ddd"]);
```

* 8:对 URL 进行 Encode
```ruby
/**
*  在 iOS 程序访问 HTTP 资源时需要对 URL 进行 Encode，
*  比如像拼出来的 http://baidu.cc?p1=%+&sd f&p2=中文，其中的中文、特殊符号&％和空格都必须进行转译才能正确访问。
*/
NSString * urlBasic = @"http://www.baidu.com/icloud?index=中国&count=10";
NSLog(@"url------%@",[urlBasic URLEvalutionEncoding]);

```

* 9:对 富文本编辑
```objc
NSString * contents = @"最近第三方测试机构给了一份测试报告。罗罗列列的给了将近有20条的问题。我就选出其中两条给大家说一下解决办法1：代码混淆为什么要搞代码混淆：就是把关键函数混淆，如果有反编译的工具，编译出来之后，看不到主要函数的名字。保证程序安全，当然就要搞混淆了。";  UILabel * label = [[UILabel alloc] init];
label.backgroundColor = [UIColor lightGrayColor];

label.numberOfLines = 0;
[self.view addSubview:label];
//设置该段文字显示样式、行高、字体颜色、字体大小
label.attributedText = [contents stringWithParagraphlineSpeace:6 textColor:[UIColor redColor] textFont:[UIFont systemFontOfSize:13]];
// 获取富文本字体高度与行高、字体大小、所占宽度
CGFloat heightsa = [contents HeightParagraphSpeace:6 withFont:[UIFont systemFontOfSize:13] AndWidth:300];
label.frame = CGRectMake(10, 100, 300, heightsa);

//*****另外一种情况 设置关键字特别显示
label.attributedText = [contents stringWithParagraphlineSpeace:6 textColor:[UIColor redColor] textFont:[UIFont systemFontOfSize:13] withKeyTextColor:[UIColor blueColor] keyFont:[UIFont systemFontOfSize:20] keyWords:@[@"第三方",@"代码混淆"]];

NOTICE:这里就要分别设置非关键字的字体、行高、字体大小。还有我们要设置的关键字的字体、字体大小、要显示的关键字。

```

## Installation

HZAdditions is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HZAdditions'
```

## Author

wanghuizhou21@163.com

### 版本更新日志

```
# 2018/08/15
# 版本：1.0.6
# 1. 增加功能去掉导航栏底线
# 2. UINavigationController+NavigationBar.h
     UIViewController+NavigationBar.h
#--------------------------------------------

# 备注：
# 1.支持Xcode8.0及以上版本（8.0前没有测试过）


```



更多干货，请关注洲洲哥的微信公众号

![(logo)](https://mmbiz.qlogo.cn/mmbiz/wFa30ADx7kLiboiaPKbKSTypo5VSAOShxYUf5zZ4JgQqadyy8J6GzHFvfAYicu5F8Ew0ngVibRM8qcaSxtjyX3blPA/0?wx_fmt=jpeg)







