# XibNestedInIB
storyboard, xib nested xib. storyboard、xib 中嵌套 xib。
 

步骤

 1. 新建一个自定义`UIView`
 2. 重写`UIView`的`initWithCoder`方法
 3. 新建一个`xib`文件，名字与自定义的`UIView`同名
 4. 可以设置该`xib`文件的`File's owner`为自定义`UIView`的类名，方便拖线控件
 5. 在需要使用该`xib`的`storyboard`或者`xib`中拖入一个`UIView`，并设定它的Class为自定义的`UIView`类名

核心代码如下：
```
    #import "MCComponent.h"
     
    @implementation MCComponent
     
    - (instancetype)initWithCoder:(NSCoder *)aDecoder
    {
        self = [super initWithCoder:aDecoder];
         
        if (nil != self) {
            UIView * contentView = [[[NSBundle mainBundle] loadNibNamed: NSStringFromClass([self class]) owner:self options:nil] firstObject];
             
            contentView.translatesAutoresizingMaskIntoConstraints = NO;
            self.translatesAutoresizingMaskIntoConstraints = NO;
             
            [self addSubview: contentView];
             
            [self addConstraint: [NSLayoutConstraint constraintWithItem: contentView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem: self attribute:NSLayoutAttributeLeft multiplier: 1.0 constant: 0]];
            [self addConstraint: [NSLayoutConstraint constraintWithItem: contentView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem: self attribute:NSLayoutAttributeRight multiplier: 1.0 constant: 0]];
            [self addConstraint: [NSLayoutConstraint constraintWithItem: contentView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem: self attribute:NSLayoutAttributeTop multiplier: 1.0 constant: 0]];
            [self addConstraint: [NSLayoutConstraint constraintWithItem: contentView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem: self attribute:NSLayoutAttributeBottom multiplier: 1.0 constant: 0]];
        }
         
        return self;
    }
     
    @end
```