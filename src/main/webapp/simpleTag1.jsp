<%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/22
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@taglib prefix="atrachel" uri="http://www.atrachel.com/mytag" %>
<html>
<head>
    <title>simpleTag1</title>
</head>
<body>
num2=${param.password}
<atrachel:simpleTag num1="10" num2="${param.password}"></atrachel:simpleTag>
</body>
</html>
