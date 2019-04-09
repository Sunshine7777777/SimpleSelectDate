//
//  DatePickView.m
//  Xianyilin
//
//  Created by Sun on 2019/1/7.
//  Copyright © 2019 Sun. All rights reserved.
//

#import "DatePickView.h"

@implementation DatePickView
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _doneButton = [[UIButton alloc]init];
        [_doneButton setTitle:@"完成" forState:0];
        [self addSubview:_doneButton];
         _cancelButton= [UIButton buttonWithType:0];
        [_cancelButton setTitle:@"取消" forState:0];
        [self addSubview:_cancelButton];
        _datePicker = [[UIDatePicker alloc]init];
        [self addSubview:_datePicker];
    }
    
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    [_cancelButton setTitleColor:[UIColor blackColor] forState:0];
    [_cancelButton addTarget:self action:@selector(cancel) forControlEvents:7];
    _cancelButton.frame  = CGRectMake(15, 15, 40, 20);
//
//    [_cancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self).offset(15);
//        make.left.equalTo(self).offset(15);
//        make.size.mas_offset(CGSizeMake(40, 20));
//    }];
    
    [_doneButton setTitleColor:[UIColor blackColor] forState:0];
    [ _doneButton  addTarget:self action:@selector(done) forControlEvents:7];
    _doneButton.frame  = CGRectMake( self.frame.size.width - 55, 15,40, 20);

//
//    [_doneButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self).offset(15);
//        make.right.equalTo(self).offset(-15);
//        make.size.mas_offset(CGSizeMake(40, 20));
//    }];
    _datePicker.date = [NSDate date];
    _datePicker.datePickerMode = 1;
    _datePicker.frame = CGRectMake(0, 30, self.frame.size.width, 250);
//    _datePicker.maximumDate = [NSDate date];
//    [_datePicker mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(self).offset(-10);
//        make.left.equalTo(self).offset(0);
//        make.right.equalTo(self).offset(0);
//        make.width.mas_offset(self.frame.size.width);
//        make.height.mas_offset(250);
//    }];
    
}
-(void)cancel{
    [self setHidden:YES];
}
-(void)done{
    [self setHidden:YES];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateString =  [dateFormatter stringFromDate:self.datePicker.date];
    if (_block) {
        self.block(dateString);
    }
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
