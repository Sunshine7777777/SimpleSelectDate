//
//  ViewController.m
//  SelectDate
//
//  Created by Sun on 2019/4/9.
//  Copyright © 2019 Sun. All rights reserved.
//

#import "ViewController.h"
#import "DatePickView.h"
@interface ViewController ()
@property (nonatomic,weak) DatePickView *pickDateView;
@property (nonatomic,weak) UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat w =  [UIScreen mainScreen].bounds.size.width;
  //  CGFloat h =  [UIScreen mainScreen].bounds.size.height;
    UIButton *button = [UIButton buttonWithType:0];
    [button setTitle:@"Choose Date" forState:0];
    [button setTitleColor:[UIColor blackColor] forState:0];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(showPickView) forControlEvents:7];
    button.frame = CGRectMake(0, 0, 90, 30);
    button.center =  CGPointMake(self.view.center.x, self.view.center.y + 40);
    
    UILabel *labe = [UILabel new];
    labe.textAlignment = NSTextAlignmentCenter;
    labe.frame = CGRectMake(0, 0, w, 20);
    labe.center =  CGPointMake(self.view.center.x, self.view.center.y - 40);
    
    labe.textColor = [UIColor blackColor];
    [self.view addSubview:labe];
    _textLabel = labe;
    
    
    DatePickView *dateView = [[DatePickView alloc]initWithFrame:CGRectMake(0, 0, 300, 280)];
    dateView.datePicker.maximumDate = [NSDate date];
    dateView.center = self.view.center;
    dateView.backgroundColor = [UIColor whiteColor];
    dateView.block= ^(NSString *dateStr){
        self.textLabel.text = dateStr;
    };
    [self.view addSubview:dateView];
    dateView.layer.borderWidth = 1;
    dateView.layer.borderColor = [UIColor grayColor].CGColor;
    dateView.layer.cornerRadius = 6;
    _pickDateView = dateView;
    [_pickDateView setHidden:YES];
    
  
    
  
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)showPickView{
    [self.pickDateView setHidden:NO];
}

@end
