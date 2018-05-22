<%@ page import="org.apache.http.protocol.HTTP" %><%--
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
-------------------------------------------------------
<br>
<%--EL隐藏变量--%>

<%--pagescope--%>
<%--?????????????????????????????????--%>
<%
%>
pageScope:${pageScope.p}
<br>
<%--requestscope--%>
<%
    request.setAttribute("req","i am a request");
%>
requestScope:${requestScope.req}
<br>
<%
    response.getWriter().println("getReq : " + request.getAttribute("req"));
%>
<br>
<%--sessionscope--%>
<%
    HttpSession ses = request.getSession();
    ses.setAttribute("sess","i am a session");
%>
sessionScope:${sessionScope.sess}
<br>
<%
    response.getWriter().println("getSess : " +session.getAttribute("sess"));
%>
<br>
<%--applicationscope--%>
<%
    application.setAttribute("app","i am a app");
%>
applicationScope:${applicationScope.app}
<br>
<%
    response.getWriter().println("getSess : " +application.getAttribute("app"));
%>
-------------------------------------------------
<br>
<%--param--%>
param : ${param.username}
<br>
<%
    response.getWriter().println("getParam : " +request.getParameter("username"));
%>
<br>

<%--paramvalues--%>
<%--/El1.jsp?username=hd48552&pass.word=1223&submit=%26%2325552%3B%26%2320132%3B&username=ccc&username=ddd--%>
paramValues:
<br>
paramValues0:${paramValues.username[0]}
<br>
paramValues1:${paramValues.username[1]}
<br>
paramValues1:${paramValues.username[2]}
<br>
---------------------------------------------------------
<br>
<%--cookie--%>
cookie:
<br>
JSESSIONID name :${cookie.JSESSIONID.name}
<br>
<%
    Cookie[] cookies =request.getCookies();
    for(Cookie c: cookies){
        response.getWriter().println("getCookieName : " +c.getName() );
        response.getWriter().println("getCookieValue : " +c.getValue() );
    }

%>
JSESSIONID value:${cookie.JSESSIONID.value}
<br>
<%--header--%>
header:
<br>
Accept-Language: ${header["Accept-Language"] }
<br>
<%
    response.getWriter().println("getHeader : " +request.getHeader("Accept-Language"));
%>

<%--headervalues--%>
<%-- {referer=[Ljava.lang.String;@2d631a81, accept-language=[Ljava.lang.String;@58edf8be, cookie=[Ljava.lang.String;@48ebebd5, host=[Ljava.lang.String;@5fac5c97, upgrade-insecure-requests=[Ljava.lang.String;@6aaef2f1, connection=[Ljava.lang.String;@5d31cf12, accept-encoding=[Ljava.lang.String;@4a933222, user-agent=[Ljava.lang.String;@77e69703, accept=[Ljava.lang.String;@6a42da74};--%>
headerValues0: ${headerValues};
<br>
headerValues1: ${headerValues};
<br>
<%--initparam--%>

initParam:
<br>
initParam1:${initParam.initParam1}
<br>
<%
//    response.getWriter().println("getInitParam : " );

%>
initParam2:${initParam.initParam2}
<br>
<%--pagecontext--%>
<%--?????????????????????????////--%>
pagecontext:
<br>
contextpath:${pageContext.request.contextPath}
<br>
sessionId:${pageContext.session.id}
<br>
<%

%>
</body>
</html>
