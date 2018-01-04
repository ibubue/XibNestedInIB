#import <UIKit/UIKit.h>

/**
 *  可复用组件.用于编写可嵌套的 xib 组件.
 *  
 *  适用场景: 需要静态确定布局的页面内的UI元素的复用性问题.
 *  使用方法: 在xib或storyboard中,将某一用于占位的view的 custom class 设为对一个的 component, 则初始化时,会自动使用此component对应的xib文件中的内容去替换对应位置.
 *  注意: 对于可动态确定布局的部分,如tableView中的cell,直接自行从xib初始化即可,不必继承于 MCComponent.
 */
@interface MCComponent : UIView

@end
