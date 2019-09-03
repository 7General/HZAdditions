//
//  HZViewController.m
//  HZAdditions
//
//  Created by wanghuizhou21@163.com on 05/25/2018.
//  Copyright (c) 2018 wanghuizhou21@163.com. All rights reserved.
//

#import "HZViewController.h"

#import <HZAdditions/Additions.h>
#import "HZAppDelegate+GZCScreenDisplay.h"

@interface HZViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray * dataArray;
@property (nonatomic, strong) UITableView * tableView;
@end

@implementation HZViewController

-(NSMutableArray *)dataArray {
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray new];
        [_dataArray addObject:@"1"];
        [_dataArray addObject:@"2"];
        [_dataArray addObject:@"3"];
        [_dataArray addObject:@"4"];
        [_dataArray addObject:@"5"];
        [_dataArray addObject:@"6"];
        [_dataArray addObject:@"7"];
        [_dataArray addObject:@"8"];
        [_dataArray addObject:@"9"];
        [_dataArray addObject:@"10"];
        [_dataArray addObject:@"11"];
        [_dataArray addObject:@"12"];
        [_dataArray addObject:@"13"];
        [_dataArray addObject:@"14"];
        [_dataArray addObject:@"15"];
        [_dataArray addObject:@"16"];
        [_dataArray addObject:@"17"];
        [_dataArray addObject:@"18"];
        [_dataArray addObject:@"19"];
        [_dataArray addObject:@"20"];
        [_dataArray addObject:@"10"];
        [_dataArray addObject:@"11"];
        [_dataArray addObject:@"12"];
        [_dataArray addObject:@"13"];
        [_dataArray addObject:@"14"];
        [_dataArray addObject:@"15"];
        [_dataArray addObject:@"16"];
        [_dataArray addObject:@"17"];
        [_dataArray addObject:@"18"];
        [_dataArray addObject:@"19"];
        [_dataArray addObject:@"20"];
        [_tableView reloadData];
    }
    return _dataArray;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //    NSString * urlBasic = @"http://www.baidu.com/icloud?index=中国&count=10";
    //    NSString * encodString = [urlBasic URLEvalutionEncoding];
    //    NSLog(@"encodString------%@",encodString);
    //    NSString * deencodString = [encodString URLDecoding];
    //    NSLog(@"deencodString------%@",deencodString);
    
    //    UIView * testView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    //    testView.backgroundColor = [UIColor redColor];
    //    [self.view addSubview:testView];
    
//    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
//    [self.view addSubview:imageView];
    
//    UIImage * image = [UIImage imageWithColor:[UIColor redColor]];
    
    // 指定颜色生成对应图片
//    imageView.image = [UIImage imageWithColor:[UIColor redColor]];
    // 指定图片裁剪园
//    UIImage * image = [UIImage imageNamed:@"123"];
//    imageView.image = [UIImage pq_ClipCircleImageWithImage:image circleRect:CGRectMake(0, 0, image.size.width, image.size.height)];

//    imageView.image = [UIImage RevRectImageColor:[UIColor redColor] forRect:(CGRectMake(0, 0, 20, 20))];
    //imageView.image = [UIImage RevRectBorderImageColor:[UIColor redColor] forRect:(CGRectMake(0, 0, 50, 50))];
    [self addWaterMark];
    // 百日依山尽1
    // 黄河入海流
    // 欲穷千里目
    // 更上一层楼
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    HZAppDelegate * applegate = ((HZAppDelegate *)[UIApplication sharedApplication].delegate);
    [applegate switchNewOrientation:GZCScreenDisplayTypeRight view:self.view];
    [applegate forceInterfaceOrientation:(UIInterfaceOrientationLandscapeRight)];
}

/* 添加背景墙 */
- (void)addWaterMark {
    NSDictionary* attrs = @{
                            NSFontAttributeName:[UIFont fontWithName:@"AmericanTypewriter" size:12],
                            NSForegroundColorAttributeName:[UIColor redColor]
                            };
    [self.view addWatermarkWithUser:@"12312312123" attr:attrs];
}

/* 截图 */
- (void)printScreen {
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    self.tableView = tableView;
    
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn addTarget:self action:@selector(getClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)getClick {
    NSData * data = [self getImage];
    UIImage * image = [[UIImage alloc] initWithData:data];
    
     UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
}

- (void)image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo
{
    NSString *msg = nil ;
    if(error != NULL){
        msg = @"保存图片失败" ;
    }else{
        msg = @"保存图片成功" ;
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"保存图片结果提示"
                                                    message:msg
                                                   delegate:self
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil];
    [alert show];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * ids = @"iDS";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ids];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ids];
    }
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.0;
}

- (NSData *)getImage {
    UIImage * viewImage = nil;
    UITableView * scrollView = self.tableView;
    UIGraphicsBeginImageContextWithOptions(scrollView.contentSize, scrollView.opaque, 0.0);
    {
        CGPoint savedContentOffset = scrollView.contentOffset;
        CGRect savedframe = scrollView.frame;
        scrollView.contentOffset = CGPointZero;
        scrollView.frame = CGRectMake(0, 0, scrollView.contentSize.width, scrollView.contentSize.height);
        [scrollView.layer renderInContext:UIGraphicsGetCurrentContext()];
        viewImage = UIGraphicsGetImageFromCurrentImageContext();
        scrollView.contentOffset = savedContentOffset;
        scrollView.frame = savedframe;
    }
    UIGraphicsEndImageContext();
    NSData * imageData = UIImageJPEGRepresentation(viewImage, 0.4);
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    return imageData;
}

@end

