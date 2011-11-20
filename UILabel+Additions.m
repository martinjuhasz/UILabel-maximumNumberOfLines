//
//  UILabel+Additions.m
//  LabelTest
//
//  Created by Martin Juhasz on 20.11.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "UILabel+Additions.h"

@implementation UILabel(Additions)

- (void)sizeToFitWithMaximumNumberOfLines:(int)lines
{
    self.numberOfLines = lines;
    CGSize maxSize = CGSizeMake(self.frame.size.width, lines * self.font.lineHeight);
    CGSize size = [self.text sizeWithFont:self.font constrainedToSize:maxSize lineBreakMode:UILineBreakModeTailTruncation];
    self.lineBreakMode = UILineBreakModeTailTruncation;
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, size.width, size.height);
}

@end
