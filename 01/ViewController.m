//
//  ViewController.m
//  01
//
//  Created by jiangwei18 on 17/6/6.
//  Copyright © 2017年 jiangwei18. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)move:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *image;
- (IBAction)size:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *buttonImage = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *imageNormal = [UIImage imageNamed:@"btn_01"];
    UIImage *imageHighLighted = [UIImage imageNamed:@"btn_02"];
    [buttonImage setBackgroundImage:imageNormal forState:UIControlStateNormal];
    [buttonImage setBackgroundImage:imageHighLighted forState:UIControlStateHighlighted];
    [buttonImage setTitle:@"你点我啊2" forState:UIControlStateNormal];
    [buttonImage setTitle:@"点我干啥2" forState:UIControlStateHighlighted];
    [buttonImage setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [buttonImage setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    CGRect frame = CGRectMake(200, 200, 100, 100);
    buttonImage.frame = frame;
    [self.view addSubview:buttonImage];
    [buttonImage addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onClick {
    NSLog(@"onClicked");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)move:(id)sender {
    CGPoint point = self.image.center;
    switch ([sender tag]) {
        case 1:
            point.y -= 10;
            break;
        case 2:
            point.y += 10;
            break;
        case 3:
            point.x -= 10;
            break;
        case 4:
            point.x += 10;
            break;
            
        default:
            break;
    }
    [UIView animateWithDuration:0.5 animations:^{
        self.image.center = point;
    }];
//    CGRect frame = self.image.frame;
//    switch ([sender tag]) {
//        case 1:
//            NSLog(@"up");
//            frame.origin.y -= 10;
//            break;
//        case 2:
//            NSLog(@"down");
//            frame.origin.y += 10;
//            break;
//        case 3:
//            NSLog(@"left");
//            frame.origin.x -= 10;
//            break;
//        case 4:
//            NSLog(@"right");
//            frame.origin.x += 10;
//            break;
//            
//        default:
//            break;
//    }
//    [UIView animateWithDuration:0.5 animations:^{
//        self.image.frame = frame;
//    }];
}
- (IBAction)size:(id)sender {
    CGRect bounds = self.image.bounds;
    switch ([sender tag]) {
        case 1:
            NSLog(@"large");
            bounds.size.height += 10;
            bounds.size.width += 10;
            break;
        case 2:
            NSLog(@"small");
            bounds.size.height -= 10;
            bounds.size.width -= 10;
            break;
            
        default:
            break;
    }
    [UIView animateWithDuration:0.5 animations:^{
        self.image.bounds = bounds;
    }];
    
//    CGRect frame = self.image.frame;
//    switch ([sender tag]) {
//        case 1:
//            NSLog(@"large");
//            frame.size.width += 10;
//            frame.size.height += 10;
//            break;
//        case 2:
//            NSLog(@"small");
//            frame.size.width -= 10;
//            frame.size.height -= 10;
//            break;
//            
//        default:
//            break;
//    }
//    [UIView animateWithDuration:0.5 animations:^{
//         self.image.frame = frame;
//    }];
}
@end
