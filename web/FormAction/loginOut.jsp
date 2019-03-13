<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/6/7
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>退出页面</title>
</head>
<body>
<%
if(session.getAttribute("userid") != null){
    session.removeAttribute("userid");
    out.println("<script>alert('退出成功！');window.location.href='index.jsp';</script>");
}

%>
</body>
</html>
