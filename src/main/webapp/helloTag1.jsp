<%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/22
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--使用标签--%>
<%--使用@taglib指令对uri和prefix进行配置--%>
<%@taglib uri="http://www.atrachel.com/mytag" prefix="atrachel" %>
<html>
<head>
    <title>helloTag1</title>
</head>
<body>
<%--使用标签--%>
<%--为必填属性赋值--%>
<atrachel:helloTag value="hello" count="10"/>
</body>
</html>
