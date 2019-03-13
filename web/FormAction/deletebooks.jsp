<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/5/30
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Database.*" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>删除书籍</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    //String x = String.valueOf(session.getAttribute("bookid"));
    String bookid = request.getParameter("bookid");
    DBUtil db = new DBUtil();
    db.connectDB();
    String sql = "delete from books where bookid = ?";
    PreparedStatement state = db.getConnection().prepareStatement(sql);
    state.setObject(1, bookid);
    int flag = state.executeUpdate();
    if(flag > 0){
        out.println("<script>alert('删除成功！');window.location.href='managebooks.jsp';</script>");
    }else {
        out.println("<script>alert('删除失败！');history.go(-1);</script>");
    }
%>
</body>
</html>
