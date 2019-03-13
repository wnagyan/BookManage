<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/6/9
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<html>
<head>
    <title>删除用户</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String idstudent = request.getParameter("studentid");
    DBUtil db = new DBUtil();
    db.connectDB();
    String sql = "delete from user where studentid = ?";
    PreparedStatement state = db.getConnection().prepareStatement(sql);
    state.setObject(1, idstudent);
    int flag = state.executeUpdate();
    if(flag > 0){
        out.println("<script>alert('删除成功！');window.location.href='manageuser.jsp';</script>");
    }else {
        out.println("<script>alert('删除失败！');history.go(-1);</script>");
    }
%>
</body>
</html>
