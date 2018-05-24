<%@ page import="main.com.Zone" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
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
<%--c:choose是c:when和c:otherwise的父标签，c:when和c:otherwise不能脱离c:choose存在
c:otherwise必须在c:when之后--%>
<c:choose>
    <c:when test="${param.age>60}">老年人</c:when>
    <c:when test="${param.age>35}">中年人</c:when>
    <c:when test="${param.age>20}">青年人</c:when>
    <c:when test="${param.age>18}">成年人</c:when>
    <c:otherwise>未成年</c:otherwise>
</c:choose>
<br>

<%--迭代操作--%>
<%--forEach--%>
--------------------------forEach------------------------------
<br>

<c:forEach begin="1" end="10" step="3" var="i">
    ${i}
</c:forEach>
<br>
<%--对集合进行遍历--%>
<%
    List<Zone> zl = new ArrayList();
    zl.add(new Zone(1,"aaa","bbb"));
    zl.add(new Zone(2,"ccc","ddd"));
    zl.add(new Zone(3,"eee","fff"));
    zl.add(new Zone(4,"ggg","hhh"));
    zl.add(new Zone(5,"kkk","lll"));
    request.setAttribute("zone",zl);

%>

 <%--${requestScope.zone}--%>
<c:forEach items="${requestScope.zone}" var="zone" varStatus="status" begin="2" end="4">

    ${status.index}--${status.count}--${status.first}--${status.last}
    <br>
    ${zone.id}
    --
    ${zone.zone_name}
    --
    ${zone.zone_area}
    <br>
</c:forEach>
<br>
----------------------------------------
<br>
<%--对MAP进行遍历--%>

<%
    Map<String,Zone> zm = new HashMap();
    zm.put("zone1",new Zone(1,"aa","bb"));
    zm.put("zone2",new Zone(2,"aa","bb"));
    zm.put("zone3",new Zone(3,"aa","bb"));
    request.setAttribute("zoneMap",zm);
%>

<c:forEach items="${requestScope.zoneMap}" var="zone">
    ${zone.key}---${zone.value.id}--${zone.value.zone_name}
    <br>
</c:forEach>
<%--forToken--%>
--------------------------forToken------------------------------
<%--对字符串进行处理，相当于string中的split--%>
<br>
<c:set var="ss" value="a.b.cdfd,dsf.aroewu,eree,ccc" scope="request"></c:set>
<c:forTokens items="${requestScope.ss}" delims="." var="splitss">
    ${splitss}
    <br>
</c:forTokens>
<br>
<c:forTokens items="${requestScope.ss}" delims="," var="splitss">
    ${splitss}
    <br>
</c:forTokens>



<%--URL操作--%>
<%--c:import--%>
<%--包含任何页面到当前页面--%>
<c:import url="http://www.baidu.com"></c:import>
<br>
-------------------------
<br>
<%--c:redirect--%>
<%--重定向到指定页面--%>
<%--<c:redirect url="http://www.baidu.com"></c:redirect>--%>

<%--c:url--%>
<br>
---------------------------------------
<br>
<c:url value="/testJSTLURL.jsp" var="testJSTLURL" scope="request">
    <c:param name="rachel" value="11111"></c:param>
</c:url>
<br>
url:${requestScope.testJSTLURL}
</body>
</html>
