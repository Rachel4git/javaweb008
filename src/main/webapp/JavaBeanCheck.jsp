<%@ page import="main.com.Zone" %><%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/21
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaBeanCheck</title>
</head>
<body>
<%
    System.out.println("------zone1-------");
%>
<%--在scope范围内查找Zone1属性值，若找到，则赋值给class类型的id变量，若没有找到，则利用反射创建一个新的对象，再把该对象赋值给id变量，并以id为属性名，添加到scope（session）中--%>
    <jsp:useBean id="Zone1" class="main.com.Zone" scope="session" type="main.com.Zone" ></jsp:useBean>
    <%--将表单中所有元素与JavaBean属性进行对应--%>
    <%--<jsp:setProperty name="Zone1" property="*"></jsp:setProperty>--%>
    <%--这种方法与表单元素相关联，就是将表单中元素与JavaBean属性进行对应，如果元素名与属性名相同，则将表单元素的值赋给对应的属性。--%>
    <jsp:setProperty name="Zone1" property="zone_name" ></jsp:setProperty>
    <%--直接为JavaBean的相应属性赋value里的值--%>
    <jsp:setProperty name="Zone1" property="zone_area" value="affdfsg"></jsp:setProperty>
    <%--通过获取request的参数来为相应的属性赋值--%>
    <jsp:setProperty name="Zone1" property="id" param="id"></jsp:setProperty>
<%
    System.out.println("------zone1-------");
    System.out.println("id=" +Zone1.getId());
    System.out.println("zonename=" +Zone1.getZoneName());
    System.out.println("zonearea=" +Zone1.getZoneArea());
%>

<%--将Javabean添加到session属性中--%>
<%
    System.out.println("------zone2-------");
%>
    <jsp:useBean id="Zone2" class="main.com.Zone"  type="main.com.Zone" scope="session"></jsp:useBean>

    <jsp:setProperty name="Zone2" property="zone_name" value="aaa"></jsp:setProperty>
    <jsp:setProperty name="Zone2" property="zone_area" value="eeee"></jsp:setProperty>
    zonename:<jsp:getProperty name="Zone2" property="zoneName"></jsp:getProperty>
    <%
        HttpSession sess = request.getSession();
        sess.setAttribute("zone",Zone2);
        response.sendRedirect("JavaBeanCheck2.jsp");
    %>


<%
    System.out.println("------zone3-------");
%>
    <jsp:useBean id="Zone3" beanName="main.com.Zone"  type="java.lang.Object" scope="session"></jsp:useBean>
    <%--<%--%>
    <%--Zone zone = (Zone)Zone2;--%>
    <%--%>--%>
</body>
</html>
