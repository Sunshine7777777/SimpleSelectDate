//
//  DatePickView.h
//  Xianyilin
//
//  Created by Sun on 2019/1/7.
//  Copyright © 2019 Sun. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^DatePickBlock)(NSString *dateString);

@interface DatePickView : UIView
@property (nonatomic,strong) UIButton *cancelButton;
@property (nonatomic,strong) UIButton *doneButton;
@property (nonatomic,strong) UIDatePicker *datePicker;
@property (nonatomic,strong) DatePickBlock block;
 @end

NS_ASSUME_NONNULL_END
