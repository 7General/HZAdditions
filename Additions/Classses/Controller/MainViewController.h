//
//  MainViewController.h
//  Additions
//
//  Created by 王会洲 on 16/4/11.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "ViewController.h"

@interface MainViewController : ViewController<UITableViewDelegate,UITableViewDataSource>
{
     UIActivityIndicatorView *_loadingView;
}
@end
