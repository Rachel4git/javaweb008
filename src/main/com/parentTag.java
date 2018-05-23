package main.com;

import groovy.ui.SystemOutputInterceptor;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

/**
 * Created by hd48552 on 2018/5/23.
 */
public class parentTag extends SimpleTagSupport {
    private  String name;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public void doTag() throws JspException, IOException {
        System.out.println("父标签的标签处理器");
        StringWriter sw = new StringWriter();
        getJspBody().invoke(sw);
        String sonTagContent = sw.toString();
        System.out.println(sonTagContent);
    }
}
