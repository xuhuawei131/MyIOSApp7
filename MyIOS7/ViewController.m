//
//  ViewController.m
//  MyIOS7
//
//  Created by lingdian on 17/8/31.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *editTest;

@end

@implementation ViewController

//软键盘弹出之前  如果返回true 弹出  如果返回false 不弹出软键盘
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return TRUE;
}


//输入框的文本 发生改变的时候 range是选中的文本 string是要修改的字符
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//    //这里可以实现(010)- 不被删除掉
    if(range.location>0&&range.location<=5){
        return  FALSE;
    }else{
        return TRUE;
    }
}
//编辑框 输入完毕 跳转到下一个输入框 或者按完成
- (void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"textFieldDidEndEditing");
}




- (void)viewDidLoad {
    [super viewDidLoad];
    self.editTest.delegate=self;//delegate 就是设置这个控件的 回调listener
    //这个delegate 必须实现这个协议
    
    self.editTest.text=@"(010)-";
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
