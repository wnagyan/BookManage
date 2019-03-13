<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/6/10
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Database.*" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>修改用户</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String studentid = new String(request.getParameter("studentid"));
    String username = new String(request.getParameter("username"));
    String classe = new String(request.getParameter("classe"));
    String idstudent = (String) session.getAttribute("studentid");
    String sql = "update user set username = ?, studentid = ?, classe = ? where studentid = ?";//参数用？表示，相当于占位符
    DBUtil db = new DBUtil();
    db.connectDB();
    PreparedStatement state = db.getConnection().prepareStatement(sql);
    state.setString(1, username);
    state.setString(2, studentid);
    state.setString(3, classe);
    state.setString(4, idstudent);
    int res = state.executeUpdate();
    if (res > 0){
        out.println("<script>alert('修改成功！');window.location.href='manageuser.jsp';</script>");
    }
    else{
        out.println("<script>alert('修改失败！');history.go(-1);</script>");
    }
    state.close();
%>
</body>
</html>
