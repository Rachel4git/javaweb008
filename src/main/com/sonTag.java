package main.com;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * Created by hd48552 on 2018/5/23.
 */
public class sonTag extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {
        System.out.println("子标签的标签处理器");
        JspTag  p = getParent();
        parentTag pp = (parentTag) p;
        String parentName = pp.getName();
        System.out.println(parentName);
    }




}
