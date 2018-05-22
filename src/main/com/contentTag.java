package main.com;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

/**
 * Created by hd48552 on 2018/5/22.
 */
public class contentTag extends SimpleTagSupport {
    @Override
    public void doTag() throws JspException, IOException {
        JspFragment jspFragment = getJspBody();
        StringWriter stringWriter = new StringWriter();
        jspFragment.invoke(stringWriter);
        String content = stringWriter.toString();

        content =content.toUpperCase();
        System.out.println(content);

    }
}
