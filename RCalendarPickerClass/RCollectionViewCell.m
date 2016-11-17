//
//  RCollectionViewCell.m
//  RCalendarPicker
//
//  Created by roycms on 2016/11/16.
//  Copyright © 2016年 roycms. All rights reserved.
//

#import "RCollectionViewCell.h"



@interface RCollectionViewCell()
@property (nonatomic ,strong)UIView *bgView;
@property (nonatomic ,strong) UILabel *dayLabel;
@end
@implementation RCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self prepareUI];
    }
    return self;
}

-(void)prepareUI{
    [self.contentView addSubview:self.bgView];
    [self.contentView addSubview:self.dayLabel];
}

-(void)setDay:(NSString *)day{
    self.dayLabel.text = day;
}

-(void)setIsSelected:(BOOL)isSelected{
    self.bgView.hidden = !isSelected;
    self.bgView.alpha = 0.42;
}
-(void)setIsToDay:(BOOL)isToDay{
    self.bgView.hidden = !isToDay;
    self.bgView.alpha = 1;
}

-(void)setBgViewColor:(UIColor *)bgViewColor{
    [_bgView setBackgroundColor:bgViewColor];
}

-(void)setDayLabelTextColor:(UIColor *)dayLabelTextColor{
    [self.dayLabel setTextColor:dayLabelTextColor];
}

-(UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc]initWithFrame:self.bounds];
        [_bgView setBackgroundColor:RGB16(0x295DC0)];
        _bgView.hidden = YES;
        [_bgView.layer setMasksToBounds:YES];
        [[_bgView layer]setCornerRadius:self.contentView.frame.size.width/2];//圆角
    }
    return _bgView;
}
- (UILabel *)dayLabel
{
    if (!_dayLabel) {
        _dayLabel = [[UILabel alloc] initWithFrame:self.bounds];
        [_dayLabel setTextAlignment:NSTextAlignmentCenter];
        [_dayLabel setFont:[UIFont boldSystemFontOfSize:17]];
    }
    return _dayLabel;
}
@end
