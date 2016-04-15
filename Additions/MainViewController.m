//
//  MainViewController.m
//  Additions
//
//  Created by 王会洲 on 16/4/11.
//  Copyright © 2016年 王会洲. All rights reserved.
//




#import "MainViewController.h"
#import "BBTipView.h"
#import "LoadingHUDView.h"

#import "Additions.h"
#import "tesViewController.h"
#import "Draw.h"
#import "consoleView.h"

@interface MainViewController ()


@property (nonatomic, strong) Draw * drawView;
@end

@implementation MainViewController

/**
 *  页面加载动画
 *
 *  @param animated <#animated description#>
 */
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.view appear];
}

/**
 *  页面消失的动画
 *
 *  @param animated <#animated description#>
 */
-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.view disappearWithCallback:@selector(log)];
}
-(void)log {
    NSLog(@"-------");
}


-(void)click {
    tesViewController * test = [[tesViewController alloc] init];
    [self.navigationController pushViewController:test animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"调一下" style:(UIBarButtonItemStylePlain) target:self action:@selector(click)];
    
    
    
    NSString * Str = @"1,2,3";
    //将string字符串转换为array数组
    NSArray  *array = [Str componentsSeparatedByString:@","];
    NSLog(@"-----%@",array);
    //＝＝反向方法
    //将array数组转换为string字符串
    NSArray * tempArry = @[@"555555555555"];
                                                            // componentsJoinedByString
    NSString *tempString = [tempArry componentsJoinedByString:@"%"];//--分隔符
    NSLog(@"=======>%@",tempString);
    
    
    UIButton * loading = [UIButton buttonWithType:UIButtonTypeCustom];
    [loading setBackgroundColor: [UIColor grayColor]];
    [loading setTitle:@"显示消息" forState:UIControlStateNormal];
    [loading addTarget:self action:@selector(loadClick) forControlEvents:UIControlEventTouchUpInside];
    loading.frame = CGRectMake(10, 100, 90, 40);
    [self.view addSubview:loading];
    
    
    UIButton * HUD = [UIButton buttonWithType:UIButtonTypeCustom];
    [HUD setBackgroundColor: [UIColor grayColor]];
    [HUD setTitle:@"LoadingHUD" forState:UIControlStateNormal];
    [HUD addTarget:self action:@selector(HUDClick) forControlEvents:UIControlEventTouchUpInside];
    HUD.frame = CGRectMake(10, 150, 120, 40);
    [self.view addSubview:HUD];
    
    UIButton * ToolTip = [UIButton buttonWithType:UIButtonTypeCustom];
    [ToolTip setBackgroundColor: [UIColor grayColor]];
    [ToolTip setTitle:@"ToolTipView" forState:UIControlStateNormal];
    [ToolTip addTarget:self action:@selector(ToolTipClick) forControlEvents:UIControlEventTouchUpInside];
    ToolTip.frame = CGRectMake(10, 200, 120, 40);
    [self.view addSubview:HUD];
    
    
    UIButton * NSNumberTip = [UIButton buttonWithType:UIButtonTypeCustom];
    [NSNumberTip setBackgroundColor: [UIColor grayColor]];
    [NSNumberTip setTitle:@"NSNumberTip" forState:UIControlStateNormal];
    [NSNumberTip addTarget:self action:@selector(NSNumberClick) forControlEvents:UIControlEventTouchUpInside];
    NSNumberTip.frame = CGRectMake(10, 250, 120, 40);
    [self.view addSubview:NSNumberTip];
    
    /*********************nsstring+additions************************/
//    // 获取手机uuid
//    NSString * Guid = [NSString generateGuid];
//    NSLog(@"----Guid %@",Guid);
//    
//    NSString * white = @"line";
//    BOOL isWhite = white.isWhitespaceAndNewlines;
//    NSLog(@"---isWhite--%d",isWhite);
//    
//    // 判断文字是否为空
//    NSString * emptyStr = @"111";
//    BOOL isEmpty = emptyStr.isEmptyOrWhitespace;
//    NSLog(@"===>>>isEmpty%d",isEmpty);
//
//    // 替换url连接地址 做处理
//    NSString * urlCode = @"?id = 12 && count = 15";
//    NSDictionary * addQuary = @{@"url":urlCode};
//    NSString * url =    [urlCode stringByAddingQueryDictionary:addQuary];
//    NSLog(@"--替换url---%@",url);
//
//    // 计算文字高度
//    NSString * text = @"住院好几天了。昨天刚安上无线网卡，写了半天笔记结果破输入法死机白忙活了，还得重搞。";
//    CGSize  textSize = [text heightWithFont:[UIFont systemFontOfSize:16] width:120];
//    NSLog(@"计算出文字高度====%f",textSize.height);
//    
//    // 计算MD5
//    NSString * md5Str = @"admin";
//    NSLog(@"MD5计算之后---%@",md5Str.md5Hash);
//    
//    // 查找替换文本中的空格
//    NSString * exchangStr = @"中 国 人 名 解 放 军";
//    NSLog(@"----替换之后<<<<：%@",[exchangStr replacedWhiteSpacsByString:@"ddd"]);
//    
//    /**
//     *  在 iOS 程序访问 HTTP 资源时需要对 URL 进行 Encode，
//     *  比如像拼出来的 http://baidu.cc?p1=%+&sd f&p2=中文，其中的中文、特殊符号&％和空格都必须进行转译才能正确访问。
//     */
//    NSString * urlBasic = @"http://www.baidu.com/icloud?index=中国&count=10";
//    NSLog(@"url------%@",[urlBasic URLEvalutionEncoding]);
//    
    
    
//    NSDictionary * param = @{@"userID":@"32",@"verCode":@"123"};
//    NSString * entUrl = [NSString stringWithFormat:@"/%@/%@",@"ddd",@"tttttt"];
//    NSLog(@"---->>>%@",[entUrl queryStringNoEncodeFromDictionary:param]);
//    NSLog(@"-----entURL====%@",entUrl);
    
    // 转换字符类型
//    NSString * paddStr = @"admin";
//    NSLog(@"passpord------%@",paddStr.passport);
    
    

    


//    self.drawView = [[Draw alloc] initWithFrame:CGRectMake(0, 100, 320, 300)];
//    [self.view addSubview:self.drawView];

    
}


-(void)loadClick {
    NSLog(@"--------------------------------------------");
//    // 弹出消息体
//    // BBTipView * bbA = [[BBTipView alloc] initWithView:self.view message:@"message" posY:0];
//    // 弹出标题 和消息体
//    BBTipView * bbA = [[BBTipView alloc] initWithView:self.view title:@"title" message:@"Message" posY:0];
//    // 设置显示时间
//    bbA.showTime = 0.8;
//    [bbA show];
    
    consoleView * console = [[consoleView alloc] initWithFrame:CGRectMake(0, 100, 320, 300)];
    [self.view addSubview:console];
    
    
}

/**
 *  失败
 */
-(void)HUDClick {
    _loadingView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    _loadingView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    _loadingView.bounds = CGRectMake(0, 0, 100, 100);
    _loadingView.hidesWhenStopped = YES;
    _loadingView.backgroundColor = [UIColor redColor];
    _loadingView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin |
    UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleRightMargin;
    [self.view addSubview:_loadingView];
    [_loadingView startAnimating];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [_loadingView stopAnimating];
    });
    
}
-(void)ToolTipClick {

}
-(void)NSNumberClick {
    NSNumber * num = @315.333;
    NSString * str = num.formatPriceString;
    NSLog(@"把nsnumber转换成nsstring%@",str);
}

@end
