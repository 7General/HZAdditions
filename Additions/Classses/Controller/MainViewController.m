//
//  MainViewController.m
//  Additions
//
//  Created by 王会洲 on 16/4/11.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#define SCRWIDTH [UIScreen mainScreen].bounds.size.width
#define SCRHEIGHT [UIScreen mainScreen].bounds.size.height


#import "MainViewController.h"

#import "Additions.h"
#import "tesViewController.h"
#import "Draw.h"
#import "consoleView.h"
#import "NSDate+Helper.h"
#import "NSString+AES256.h"
#import "NSString+Helper.h"
#import "UIView+RoundedCorners.h"


@interface MainViewController ()


@property (nonatomic, strong) Draw * drawView;

@property (nonatomic, weak) UITableView * myTableView;

@end

@implementation MainViewController

/**
 *  页面加载动画
 *
 *  @param animated <#animated description#>
 */
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //[self.view appear];
}

/**
 *  页面消失的动画
 *
 *  @param animated <#animated description#>
 */
-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    //[self.view disappearWithCallback:@selector(log)];
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
    
    //NSDictionary * param = @{@"userID":@"wanghuizhou21@163.com",@"verCode":@"123"};
//    NSString * testStr = @"AAA?";
//    NSString * dictAndStr = [testStr URLEncoding];
//    NSLog(@"----::%@",dictAndStr);
    //NSString * jsonStr = [self dictionaryToJson:param];
    
    //NSString * aesStr = [jsonStr aes256_encrypt:@"fca73e021f634daf"];
    //NSLog(@"-----》%@",aesStr);
    
    
    //NSString * testss = @"W?#";
    //NSString * resS = [testss URLEvalutionEncoding];
    //NSLog(@"-----《《%@",resS);
    
//    NSString * paramStr = @"POST$http://localhost:8083/icloud/merchant/common/getcode.do$userId=5555555555555555&accessToken=fca73e021f634daf813d7ad723d2dacf&phone=18703650314";
//    NSString * aesStr = [paramStr aes256_encrypt:@"fca73e021f634daf"];
//    NSLog(@"-----%@",aesStr);
    

    
    
    
//    NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
//    [dict setValue:@"ddddd" forKey:@"article_id"];
//    [dict setValue:@"ddddd" forKey:@"articleDate"];
//    
//    
//    
//    NSLog(@"-----%@",dict);
//    
//    
//    for (NSString * items in dict) {
//        NSLog(@"---%@",items);
//    }
    
    
//    
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"调一下" style:(UIBarButtonItemStylePlain) target:self action:@selector(click)];
//    
//    
//    
//    NSString * Str = @"1,2,3";
//    //将string字符串转换为array数组
//    NSArray  *array = [Str componentsSeparatedByString:@","];
//    NSLog(@"-----%@",array);
//    //＝＝反向方法
//    //将array数组转换为string字符串
//    NSArray * tempArry = @[@"555555555555"];
//                                                            // componentsJoinedByString
//    NSString *tempString = [tempArry componentsJoinedByString:@"%"];//--分隔符
//    NSLog(@"=======>%@",tempString);
//    
//    
//    UIButton * loading = [UIButton buttonWithType:UIButtonTypeCustom];
//    [loading setBackgroundColor: [UIColor grayColor]];
//    [loading setTitle:@"显示消息" forState:UIControlStateNormal];
//    // 设置动态添加的新的titleName属性
//    [loading setTitleName:@"titleName"];
//    // 设置动态添加的新的OrderStr属性
//    [loading setOrderStr:12];
//    [loading addTarget:self action:@selector(loadClick:) forControlEvents:UIControlEventTouchUpInside];
//    loading.frame = CGRectMake(10, 100, 90, 40);
//    [self.view addSubview:loading];
//    // 设置不同状态下的背景色
//    [loading setBackgroundColor:[UIColor redColor] forState:UIControlStateNormal];
//
//    
//    UIButton * HUD = [UIButton buttonWithType:UIButtonTypeCustom];
//    [HUD setBackgroundColor: [UIColor grayColor]];
//    [HUD setTitle:@"LoadingHUD" forState:UIControlStateNormal];
//    [HUD addTarget:self action:@selector(HUDClick) forControlEvents:UIControlEventTouchUpInside];
//    HUD.frame = CGRectMake(10, 150, 120, 40);
//    [self.view addSubview:HUD];
//    
//    UIButton * ToolTip = [UIButton buttonWithType:UIButtonTypeCustom];
//    [ToolTip setBackgroundColor: [UIColor grayColor]];
//    [ToolTip setTitle:@"ToolTipView" forState:UIControlStateNormal];
//    [ToolTip addTarget:self action:@selector(ToolTipClick) forControlEvents:UIControlEventTouchUpInside];
//    ToolTip.frame = CGRectMake(10, 200, 120, 40);
//    [self.view addSubview:HUD];
//    
//    
//    UIButton * NSNumberTip = [UIButton buttonWithType:UIButtonTypeCustom];
//    [NSNumberTip setBackgroundColor: [UIColor grayColor]];
//    [NSNumberTip setTitle:@"NSNumberTip" forState:UIControlStateNormal];
//    [NSNumberTip addTarget:self action:@selector(NSNumberClick) forControlEvents:UIControlEventTouchUpInside];
//    NSNumberTip.frame = CGRectMake(10, 250, 120, 40);
//    [self.view addSubview:NSNumberTip];
    
    /*********************nsstring+additions************************/
//    // 获取手机uuid
//    NSString * Guid = [NSString generateGuid];
//    NSLog(@"----Guid %@",Guid);
//    NSString * uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
//    NSLog(@"========%@",uuid);
    
    
    
    
    
    
    // 55964B8B-C00F-4169-936F-D4286138E68A
    // 55964B8B-C00F-4169-936F-D4286138E68A
    
    // [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    // 74A45415-D2D7-4ED6-88E4-E662F7804327
    // 0BE4F0E0-D097-4245-B528-77929C72BBA6
//
//    NSString * white = @"line";
//    BOOL isWhite = white.isWhitespaceAndNewlines;
//    NSLog(@"---isWhite--%d",isWhite);
//    
    // 判断文字是否为空
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
    // 计算MD5
//    NSString * testStr = @"article_idNw==article_title5qCH6aKY77ya5qCH6aKY77ya5qCH6aKY77ya5qCH6aKY77ya5qCH6aKY77ya5qCH6aKY77ya5qCH6aKY77yaarticleDateMjAxNi0wNC0xNA==user_idNTkx3A3KHDSDS";
//    NSString * md5Str = @"admin";
//    NSLog(@"MD5计算之后---%@",testStr.md5Hash);
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
//    NSString * jsonStr = [self dictionaryToJson:param];
//    NSLog(@"------>>%@",jsonStr);
//    NSString * entUrl = [NSString stringWithFormat:@"/%@/%@",@"ddd",@"tttttt"];
//    NSLog(@"---->>>%@",[entUrl queryStringNoEncodeFromDictionary:param]);
//    NSLog(@"-----entURL====%@",entUrl);
    
    // 转换字符类型
//    NSString * paddStr = @"admin";
//    NSLog(@"passpord------%@",paddStr.passport);
    
    

    


//    self.drawView = [[Draw alloc] initWithFrame:CGRectMake(0, 100, 320, 300)];
//    [self.view addSubview:self.drawView];

    
    //NSString * compareTime = @"2016-04-14 12:00:00";
    
    //NSString * currentTimes = [compareTime CompareCurrentTime:@"yyyy-MM-dd"];
    //NSLog(@"------compare--%@",currentTimes);
    //NSDate *dateEndTime = [NSDate dateFromString:compareTime withFormat:dateFormat];
//    self.automaticallyAdjustsScrollViewInsets = NO;
//    self.navigationController.navigationBar.translucent = YES;
//    self.navigationController.navigationBar.hidden = YES;
    
//    NSString * contents = @"最近第三方测试机构给了一份测试报告。罗罗列列的给了将近有20条的问题。我就选出其中两条给大家说一下解决办法1：代码混淆为什么要搞代码混淆：就是把关键函数混淆，如果有反编译的工具，编译出来之后，看不到主要函数的名字。保证程序安全，当然就要搞混淆了。";
//    UILabel * label = [[UILabel alloc] init];
//    label.backgroundColor = [UIColor lightGrayColor];
//    
//    label.numberOfLines = 0;
//    [self.view addSubview:label];
//    //label.attributedText = [contents stringWithParagraphlineSpeace:6 textColor:[UIColor redColor] textFont:[UIFont systemFontOfSize:13] withKeyTextColor:[UIColor blueColor] keyFont:[UIFont systemFontOfSize:20] keyWords:@[@"第三方",@"代码混淆"]];
//    label.attributedText = [contents stringWithParagraphlineSpeace:6 textColor:[UIColor redColor] textFont:[UIFont systemFontOfSize:13]];
//    CGFloat heightsa = [contents HeightParagraphSpeace:6 withFont:[UIFont systemFontOfSize:13] AndWidth:300];
//    label.frame = CGRectMake(10, 100, 300, heightsa);
//    
//    
//    return;
//    UITableView * MyTableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCRWIDTH, SCRHEIGHT) style:UITableViewStylePlain];
//    MyTableview.delegate = self;
//    MyTableview.dataSource = self;
//    [self.view addSubview:MyTableview];
//    self.myTableView = MyTableview;
//    
//    self.myTableView.tableFooterView = [[UIView alloc] init];
    
    
    /**计算天数差*/
    
//    NSString *dateFormat            = @"yyyy-MM-dd";
//    
//    NSString * currentTimes = @"2016-08-01";
//    NSDate * NowDate = [NSDate dateFromString:currentTimes withFormat:dateFormat];
//    
//    NSInteger daye = [NSDate daysFromDate:[NSDate date] toDate:NowDate];
//    NSLog(@"---------------:%ld",abs(daye));
//    
//    // 时间戳转换时间       1473835556526    1469980800
//    NSString * tims = @"1473835556526";
//    //NSString * timsStr = [tims tranclTimeWithFormat:dateFormat];
//    NSString * timsStr = [self tranclTimeWith:tims dateFormat:dateFormat];
//    NSLog(@"----%@",timsStr);
    
    
    
    // http://comper.udesk.cn/im_client?agent_id=37776&group_id=27914
    //number=13574221234&email=894733082@qq.com&timestamp=20151124141451&sign=07131700A29AD987F5D9F0463CE7EFC7
    // 1478080380
    
    //http://comper.udesk.cn/im_client/call_back?agent_id=37776&group_id=27914&c_name=洲洲哥&c_phone=13520866229&timestamp=1478080380
    
    
    UIView * contet = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    contet.backgroundColor = [UIColor redColor];
    [contet setRoundedCorners:UIRectCornerTopLeft radius:20];
//    contet.layer.borderWidth = 1;
    [self.view addSubview:contet];
    
    
    
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 240, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    btn.layer.borderWidth = 1;
    btn.layer.borderColor = [UIColor greenColor].CGColor;
    btn.borderWhich =  ViewBorderTop | ViewBorderLeft;
    
    [btn setRoundedCorners:UIRectCornerTopLeft radius:20];
    
    
    
    [self.view addSubview:btn];
    
    
    
    
    NSString * statTime = @"2016-11-30";
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//    NSDate *date = [dateFormatter dateFromString:statTime];
//    
//    //实例化一个NSDateFormatter对象
//    NSDateFormatter *Formatter = [[NSDateFormatter alloc] init];
//    //设定时间格式,这里可以设置成自己需要的格式
//    [Formatter setDateFormat:@"yyyyMMdd"];
//    NSString * resStr = [Formatter stringFromDate:date];
//    NSLog(@"-----%@",resStr);
    NSString * res = [self getMonthBeginAndEndWith:statTime];
    NSLog(@"----%@",res);
    
}

- (NSString *)getMonthBeginAndEndWith:(NSString *)dateStr{
    
    NSDateFormatter *format=[[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-dd"];
    NSDate *newDate=[format dateFromString:dateStr];
    double interval = 0;
    NSDate *beginDate = nil;
    NSDate *endDate = nil;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    [calendar setFirstWeekday:2];//设定周一为周首日
    BOOL ok = [calendar rangeOfUnit:NSMonthCalendarUnit startDate:&beginDate interval:&interval forDate:newDate];
    //分别修改为 NSDayCalendarUnit NSWeekCalendarUnit NSYearCalendarUnit
    if (ok) {
        endDate = [beginDate dateByAddingTimeInterval:interval-1];
    }else {
        return @"";
    }
    NSDateFormatter *myDateFormatter = [[NSDateFormatter alloc] init];
    [myDateFormatter setDateFormat:@"YYYY.MM.dd"];
    NSString *beginString = [myDateFormatter stringFromDate:beginDate];
    NSString *endString = [myDateFormatter stringFromDate:endDate];
    NSString *s = [NSString stringWithFormat:@"%@-%@",beginString,endString];
    return s;
}

-(NSString  *)dateFromString:(NSString *)strTime {
    NSTimeInterval time=[strTime doubleValue];//+ 28800;//因为时差问题要加8小时 == 28800 sec
    NSDate *detaildate=[NSDate dateWithTimeIntervalSince1970:time];
    //实例化一个NSDateFormatter对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:@"yyyyMMdd"];
    NSString * resStr = [dateFormatter stringFromDate:detaildate];
    return  resStr;
}






-(NSString *)tranclTimeWith:(NSString *)times dateFormat:(NSString *)format {
    NSTimeInterval time=[times doubleValue] /1000;//+ 28800;//因为时差问题要加8小时 == 28800 sec
    NSDate *detaildate=[NSDate dateWithTimeIntervalSince1970:time];
    NSLog(@"date:%@",[detaildate description]);
    //实例化一个NSDateFormatter对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:format];
    
    return [dateFormatter stringFromDate: detaildate];
}


-(void)loadClick:(UIButton *)sender {
    NSLog(@"------%@--------------------%ld--------------",sender.titleName,sender.orderStr);
    NSString * timeCuo = @"1464056448";
    NSLog(@"-----%@",timeCuo.tranclTime.DefaultCompareCurrentTime);
    
//    // 弹出消息体
//    // BBTipView * bbA = [[BBTipView alloc] initWithView:self.view message:@"message" posY:0];
//    // 弹出标题 和消息体
//    BBTipView * bbA = [[BBTipView alloc] initWithView:self.view title:@"title" message:@"Message" posY:0];
//    // 设置显示时间
//    bbA.showTime = 0.8;
//    [bbA show];
    
//    consoleView * console = [[consoleView alloc] initWithFrame:CGRectMake(0, 100, 320, 300)];
//    [self.view addSubview:console];
    
    
}

- (NSString*)dictionaryToJson:(NSDictionary *)dic {
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
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





#pragma mark -TABLEVIEW DELEGATE
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(UITableViewCell * )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * ID = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.textLabel.text = @"dddddd";
    return cell;
}





@end
