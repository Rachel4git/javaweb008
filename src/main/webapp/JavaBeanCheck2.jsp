<%@ page import="main.com.Zone" %><%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/21
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaBeanCheck2</title>
</head>
<body>
    <%
        System.out.println("-----javabeancheck------");
        Zone zz = (Zone) request.getSession().getAttribute("zone");
        System.out.println(zz);
        System.out.println(zz.getZoneName());
    %>
</body>
</html>
