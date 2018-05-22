package main.com;

/**
 * Created by hd48552 on 2018/5/22.
 */

import java.io.IOException;
import java.io.StringWriter;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTag;
import javax.servlet.jsp.tagext.SimpleTagSupport;
public class helloTag implements SimpleTag{

    private  String value;
    private  String count;
    private PageContext pageContext;

    public void setValue(String value) {
        this.value = value;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getValue() {
        return value;
    }

    public String getCount() {
        return count;
    }


    @Override
    public void doTag() throws JspException, IOException {
        System.out.println(" do tag ");

        int c = Integer.parseInt(count);
        for(int i=0;i<c; i++){
            System.out.println(i+1+":"+value);

        }
    }

    @Override
    public void setParent(JspTag jspTag) {
        System.out.println(" set parent ");
    }

    @Override
    public JspTag getParent() {
        System.out.println(" get parent ");
        return null;
    }

    @Override
    public void setJspContext(JspContext jspContext) {
        System.out.println(" set jsp context ");
        this.pageContext = (PageContext) jspContext;
    }

    @Override
    public void setJspBody(JspFragment jspFragment) {
        System.out.println(" set jsp body ");
    }
}
