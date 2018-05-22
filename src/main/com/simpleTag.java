package main.com;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * Created by hd48552 on 2018/5/22.
 */
public class simpleTag extends SimpleTagSupport {
    private  String  num1;
    private  String  num2;
    private  int  outprint;

    public void setNum1(String num1) {
        this.num1 = num1;
    }

    public void setNum2(String num2) {
        this.num2 = num2;
    }

    @Override
    public void doTag() throws JspException, IOException {
            int n1 = Integer.parseInt(num1);
            int n2 = Integer.parseInt(num2);
            outprint=n1-n2;
            System.out.println(outprint);

    }
}
