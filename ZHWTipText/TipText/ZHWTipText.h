//
//  ZHWTipText.h
//  LANG
//
//  Created by zhanghongwei on 17/11/16.
//  Copyright © 2016年 LANG. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TipArrowPosition)
{
    TipArrowPosition_Left = 0,
    TipArrowPosition_Right,
    TipArrowPosition_Center,
    TipArrowPosition_Custom
};

@interface ZHWTipText : UIView

//加载背景图片 和 三角箭头图片
- (void)loadBgImg:(UIImage*)bgImg arrowImg:(UIImage*)arrowImg;

//显示文字及箭头位置
- (void)showTip:(NSString*)text position:(TipArrowPosition)position arrowX:(CGFloat)arrowX;


@end








