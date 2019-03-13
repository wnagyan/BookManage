<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>验证注册</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String studentid = new String(request.getParameter("studentid"));
    String name = new String(request.getParameter("username"));
    String classe = new String(request.getParameter("classes"));
    String sql = "insert into user (username, userpassword, studentid, classe, bocounts) values (?, ?, ?, ?, ?)";//参数用？表示，相当于占位符
    DBUtil db = new DBUtil();
    db.connectDB();
    PreparedStatement state = db.getConnection().prepareStatement(sql);
    state.setString(1, name);
    state.setString(2, "123456");
    state.setString(3, studentid);
    state.setString(4, classe);
    state.setInt(5, 0);
    int res = state.executeUpdate();
    if (res > 0){
        out.println("<script>alert('添加成功！');window.location.href='adduser.jsp';</script>");

    }
    else{
        out.println("<script>alert('添加失败！');history.go(-1);</script>");
    }
    state.close();
%>

</body>
</html>