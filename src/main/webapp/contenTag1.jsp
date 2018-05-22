<%@ page import="main.com.Zone" %><%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/22
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="atrachel" uri="http://www.atrachel.com/mytag" %>
<html>
<head>
    <title>contentTag1</title>
</head>
<body>
<atrachel:contentTag>
    username: ${param.username}
    password: ${param["pass.word"]}

    <%--标签体类型设置为scripless时，标签体内不能包含JSP脚本，下面代码运行报错--%>
    <%--<%--%>
        <%--Zone zz = new Zone(1,"aaa","bbb");--%>
        <%--request.setAttribute("zone",zz);--%>
    <%--%>--%>
</atrachel:contentTag>
</body>
</html>
