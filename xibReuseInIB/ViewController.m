#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    Manage * manage = [[Manage alloc]init];
//    [[NSBundle mainBundle] loadNibNamed:@"Empty" owner: manage options: nil];
//    UIButton * btn = manage.btn;
//    manage.view.frame = self.view.frame;
//    [self.view addSubview: manage.view];
    // 是xib 的问题?
//    NSArray * views = [[NSBundle mainBundle] loadNibNamed:@"Module3" owner: nil options: nil];
//    UIView * contentView = views[0];
//    [self.view addSubview: contentView];

}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
