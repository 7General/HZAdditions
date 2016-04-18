
## HZAdditions
* An easy way to use PUSH-Additions
* 自定义的各种工具类（纯手工打造）
* 各种属性各种用

## 使用的时候首先添加头文件
* #import "Additions.h"

* 可使用cocoapods安装
最新的如下
```ruby
-> HZAdditions (1.0.4)
An easy way to use HZ-show-Additions
pod 'HZAdditions', '~> 1.0.4'
- Homepage: https://github.com/7General/HZAdditions
- Source:   https://github.com/7General/HZAdditions.git
- Versions: 1.0.4, 1.0.3, 1.0.2, 1.0.1 [master repo]

```


请使用最新的版本安装，目前可使用
```ruby
pod 'HZAdditions', '~> 1.0.4'
```

## 功能列表介绍

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
* 2:获取手机UUID
```ruby
// 获取手机uuid
NSString * Guid = [NSString generateGuid];
NSLog(@"----Guid %@",Guid);

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
## 其他功能就不一一列举了，请各位看官查看源码。

更多干货，请关注洲洲哥的微信公众号

![(logo)](https://mmbiz.qlogo.cn/mmbiz/wFa30ADx7kLiboiaPKbKSTypo5VSAOShxYUf5zZ4JgQqadyy8J6GzHFvfAYicu5F8Ew0ngVibRM8qcaSxtjyX3blPA/0?wx_fmt=jpeg)

