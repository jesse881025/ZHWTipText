//
//  ZHWTipText.m
//  LANG
//
//  Created by zhanghongwei on 17/11/16.
//  Copyright © 2016年 LANG. All rights reserved.
//

#import "ZHWTipText.h"
#import "Masonry.h"

@interface ZHWTipText()

@property (nonatomic, strong) UILabel *labTitle;
@property (nonatomic, strong) UIImageView *bgImg;
@property (nonatomic, strong) UIImageView *arrowImg;

@end



@implementation ZHWTipText

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView];
    }
    return self;
}

- (void)createView
{
    
    //
    self.bgImg = [[UIImageView alloc] init];
    [self addSubview:self.bgImg];
    self.bgImg.image = [UIImage imageNamed:@"tipText_bg"];
    self.bgImg.layer.cornerRadius = 4.f;
    self.bgImg.layer.masksToBounds = YES;
    
    //
    self.arrowImg = [[UIImageView alloc] init];
    [self addSubview:self.arrowImg];
    self.arrowImg.image = [UIImage imageNamed:@"tipText_arrow"];
    
    self.labTitle = [[UILabel alloc] init];
    self.labTitle.textColor = [UIColor whiteColor];
    self.labTitle.font = [UIFont systemFontOfSize:15];
    self.labTitle.textAlignment = NSTextAlignmentCenter;
    self.labTitle.numberOfLines = 0;
    [self addSubview:self.labTitle];
    
    
    
    __weak __typeof(&*self)weakSelf = self;
    [self.labTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@5);
        make.right.equalTo(@-5);
        make.top.equalTo(@5);
        make.bottom.equalTo(weakSelf.arrowImg.mas_top).with.offset(-5);
        make.height.greaterThanOrEqualTo(@20);
        make.width.greaterThanOrEqualTo(@40);
    }];
    [self.bgImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@0);
        make.left.equalTo(@0);
        make.right.equalTo(@0);
        make.bottom.equalTo(weakSelf.arrowImg.mas_top).with.offset(0);
    }];
    [self.arrowImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(@0);
        make.centerX.equalTo(weakSelf);
        make.left.greaterThanOrEqualTo(@10);
        make.right.lessThanOrEqualTo(@-10);
    }];
}

//加载背景图片 和 三角箭头图片
- (void)loadBgImg:(UIImage*)bgImg arrowImg:(UIImage*)arrowImg
{
    if (bgImg) {
        self.bgImg.image = bgImg;
    }
    if (arrowImg) {
        self.arrowImg.image = arrowImg;
    }
}

//显示文字及箭头位置, arrowX 只有在TipArrowPosition_Custom下才会用到
- (void)showTip:(NSString*)text position:(TipArrowPosition)position arrowX:(CGFloat)arrowX
{
    if (!text || text.length==0) {
        return;
    }
    self.labTitle.text = text;
    
    __weak __typeof(&*self)weakSelf = self;
    //距离左右两边的最小距离
    NSInteger x = 10;
    if (position == TipArrowPosition_Left) {
        //NSInteger center = self.frame.size.width/2-x;
        [self.arrowImg mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(@0);
            make.left.equalTo(@(x));
            make.left.greaterThanOrEqualTo(@(x));
            make.right.lessThanOrEqualTo(@(-x));
        }];
    }
    else if (position == TipArrowPosition_Right) {
        //NSInteger center = self.frame.size.width/2-x;
        [self.arrowImg mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(@0);
            make.right.equalTo(@(-x));
            make.left.greaterThanOrEqualTo(@(x));
            make.right.lessThanOrEqualTo(@(-x));
        }];
    }
    else if (position == TipArrowPosition_Center) {
        [self.arrowImg mas_updateConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(weakSelf);
        }];
    }
    else if (position == TipArrowPosition_Custom) {
        [self.arrowImg mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(@0);
            make.left.equalTo(@(arrowX));
            make.left.greaterThanOrEqualTo(@(x));
            make.right.lessThanOrEqualTo(@(-x));
        }];
    }
}


@end


































