# MyIOSApp7
15-3  代理的例子<br/>


@interface ViewController : UIViewController<UITextFieldDelegate><br/>

@end<br/>
viewcontroler 实现了输入框的代理 <br/>



//软键盘弹出之前  如果返回true 弹出  如果返回false 不弹出软键盘<br/>
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{<br/>
    return TRUE;<br/>
}<br/>


//输入框的文本 发生改变的时候 range是选中的文本 string是要修改的字符<br/>
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//    //这里可以实现(010)- 不被删除掉
    if(range.location>0&&range.location<=5){<br/>
        return  FALSE;<br/>
    }else{<br/>
        return TRUE;<br/>
    }<br/>
}<br/>
//编辑框 输入完毕 跳转到下一个输入框 或者按完成<br/>
- (void)textFieldDidEndEditing:(UITextField *)textField{<br/>
    NSLog(@"textFieldDidEndEditing");<br/>
}<br/>
