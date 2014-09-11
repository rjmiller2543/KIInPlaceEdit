//
//  UILabel+InPlaceEditPrivate.m
//  InPlaceEdit
//
//  Created by kaiinui on 2014/09/12.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "UILabel+InPlaceEditPrivate.h"

#import <objc/runtime.h>

#import "KIInPlaceEditController.h"

@implementation UILabel (InPlaceEditPrivate)

# pragma mark - Private Properties

@dynamic ipe_controller, ipe_option;

- (KIInPlaceEditController *)ipe_controller {
    return objc_getAssociatedObject(self, @selector(ipe_controller));
}

- (void)setIpe_controller:(KIInPlaceEditController *)ipe_controller {
    objc_setAssociatedObject(self, @selector(ipe_controller), ipe_controller, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (KIInPlaceEditOptions *)ipe_option {
    return objc_getAssociatedObject(self, @selector(ipe_option));
}

- (void)setIpe_option:(KIInPlaceEditOptions *)ipe_option {
    objc_setAssociatedObject(self, @selector(ipe_option), ipe_option, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

# pragma mark - UIMenu Custom Item

- (void)ipe_edit:(id)sender {
    NSString *text = self.text;
    self.text = @"";
    
    [self initializeTextFieldWithText:text];
}

# pragma mark - Helpers (In Place Edit)

- (void)initializeTextFieldWithText:(NSString *)text {
    UITextField *field = [[UITextField alloc] initWithFrame:self.bounds];
    field.text = text;
    field.font = self.font;
    field.delegate = self.ipe_controller;
    [self addSubview:field];
    [field becomeFirstResponder]; // Focus on the text field.
}

@end