//
//  ViewController.m
//  GestureRecognizer
//
//  Created by 李鹏跃 on 17/1/27.
//  Copyright © 2017年 13lipengyue. All rights reserved.
//

#import "ViewController.h"
#import "LYPGestureRecognizerTool.h"
@interface ViewController ()<UIGestureRecognizerDelegate>
@property (nonatomic,strong) LYPGestureRecognizerTool *tool;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LYPGestureRecognizerTool *tool = [[LYPGestureRecognizerTool alloc]init];
    self.tool = tool;
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"图片1."]];
    imageView.center = self.view.center;
    imageView.bounds = CGRectMake(0, 0, 300, 300);
    [self.view addSubview:imageView];
    //[LYPGestureRecognizerTool pinchWithView:imageView andPinchBlock:nil];

    //[LYPGestureRecognizerTool rotationWithView:imageView andRotationBlock:nil];
    //[LYPGestureRecognizerTool panWithView:imageView andPanBlock:nil];
    [LYPGestureRecognizerTool swipeWithView:imageView andSwipeGrestureDirection:UISwipeGestureRecognizerDirectionLeft andSwipeBlock:nil];
    [LYPGestureRecognizerTool swipeWithView:imageView andSwipeGrestureDirection:UISwipeGestureRecognizerDirectionUp andSwipeBlock:nil];
    [LYPGestureRecognizerTool swipeWithView:imageView andSwipeGrestureDirection:UISwipeGestureRecognizerDirectionDown andSwipeBlock:nil];
    [LYPGestureRecognizerTool swipeWithView:imageView andSwipeGrestureDirection:UISwipeGestureRecognizerDirectionRight andSwipeBlock:nil];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
