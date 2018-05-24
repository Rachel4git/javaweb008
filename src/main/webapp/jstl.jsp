<%@ page import="main.com.Zone" %><%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/24
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>jstl</title>
</head>
<body>
<%--表达式操作--%>
<%--c:out--%>
--------------------------c:out------------------------------

<br>
<%
    request.setAttribute("book","<java>");
%>
<%--无法显示<java>,显示的为空 将<java>当做标签处理--%>
book:${requestScope.book}
<br>
<%--可以正常显示book的值，c:out能对特殊字符进行转义--%>
book:<c:out value="${requestScope.book }"></c:out>
<br>
<%--default:当value的值为空的时候 显示default的值--%>
book:<c:out value="${requestScope.book }" default="aaa"></c:out>
<br>
<%--escapeXml：是否转义特殊字符，默认为true--%>
book:<c:out value="${requestScope.book}"  escapeXml="false"></c:out>
<br>

book:<c:out value="${requestScope.book}"  escapeXml="true"></c:out>
<br>


<%--c:set--%>
--------------------------c:set------------------------------

<br>
<%
    Zone zz = new Zone(1,"aaa","bbb");
    request.setAttribute("zone",zz);
%>

id:${requestScope.zone.id}
<br>
<%--赋值给Javabean：将value的值赋给target的property属性--%>
<c:set target="${requestScope.zone}" property="id" value="2" ></c:set>
<%--将value赋值给scope范围内的var变量--%>
<c:set var="variable" value="ddd" scope="request"></c:set>

id:${requestScope.zone.id}
<br>

var:${requestScope.variable}
<br>

--------------------------c:set------------------------------

<br>

<c:remove var="variable" scope="request"></c:remove>
var:${requestScope.variable}
<br>

<%--流程控制操作--%>
<%--c:if--%>
--------------------------c:if------------------------------

<br>

<c:set value="20" var="age" scope="request"></c:set>

<c:if test="${param.age>18}">成年了</c:if>
<br>
<c:if test="${requestScope.age>18}" var="isAdault" scope="request"></c:if>
isAdault:<c:out value="${requestScope.isAdault}"></c:out>
<br>

<%--c:choose--%>
--------------------------c:choose  c:when  c:otherwise------------------------------
<br>
<%--c:choose是c:when和c:otherwise的父标签，c:when和c:otherwise不能脱离c:choose存在--%>
<c:choose>
    <c:when test="${param.age>60}">老年人</c:when>
    <c:when test="${param.age>35}">中年人</c:when>
    <c:when test="${param.age>20}">青年人</c:when>
    <c:when test="${param.age>18}">成年人</c:when>
    <c:otherwise>未成年</c:otherwise>
</c:choose>
<br>





<%--迭代操作--%>
<%--URL操作--%>

</body>
</html>
