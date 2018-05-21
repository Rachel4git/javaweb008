<%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/21
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--如果要在js页面使用EL表达式，需要在page指令中加入：isELIgnored="false"--%>
<html>
<head>
    <title>El1</title>
</head>
<body>
<%--EL表达式，"."运算符和"[]"运算符--%>
    username: ${username }
    <br>
    <%--可获取到username--%>
    username: ${param.username }
    username: <%=request.getParameter("username")%>
    <br>
    <%--可获取到password--%>
    password: ${param["pass.word"]}
    password:<%=request.getParameter("pass.word")%>
    <br>
    <%--如果参数名中含“.”,则不能使用.运算符，获取不到值--%>
    password: ${param.pass.word }
    <br>
    <%--不可获取到password--%>
    password: ${requestScope.pass.word }
    <br>
    password: ${requestScope["pass.word"]}
    <br>

<%--EL表达式自动转型--%>
    password: ${param["pass.word"]+1}
    password:<%=request.getParameter("pass.word")+1%>
    <br>

<%--EL运算符--%>
<%--判断是否为空--%>
    password is empty ;${empty param["pass.word"]}
    <br>
<%--三元运算符--%>
    password is larger than 10:${param[pass.word] > 10 ? "yes" :"no"}
    <br>
    change password :\${param[pass.word]}原样输出
    <br>

<%--EL隐藏变量--%>

<%--pagescope--%>

<%--requestscope--%>
<%--sessionscope--%>
<%--applicationscope--%>
<%--param--%>
param:
<br>
--
<br>

<%--paramvalues--%>
<%--paramValues0:${paramValues[0].class.name}--%>
<%--paramValues1:${paramValues[1]}--%>
<%--cookie--%>
cookie:
<br>
JSESSIONID name :${cookie.JSESSIONID.name}
<br>
JSESSIONID value:${cookie.JSESSIONID.value}
<br>
<%--header--%>
header:
<br>
Accept-Language: ${header["Accept-Language"] }
<br>
<%--headervalues--%>
<%--headerValues0: ${headerValues.[0]};--%>
<%--headerValues1: ${headerValues.[1]};--%>

<%--initparam--%>
initParam:
<br>
initParam1:${initParam.el-initParam1}
<br>
initParam2:${initParam.el-initParam2}
<br>
<%--pagecontext--%>
pagecontext:
<br>
contextpath:${pageContext.request.contextPath}
<br>
sessionId:${pageContext.session.id}
<br>
</body>
</html>
