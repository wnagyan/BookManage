<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/6/10
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Database.*" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>修改书籍</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    Integer bookid = Integer.parseInt(request.getParameter("bookid"));
    String bookname = new String(request.getParameter("bookname"));
    Integer bookcount = Integer.parseInt(request.getParameter("bookcount"));
    Integer bookprice = Integer.parseInt(request.getParameter("bookprice"));
    String bookauthor = new String(request.getParameter("bookauthor"));
    String bookpress = new String(request.getParameter("bookpress"));
    String bookdata = new String(request.getParameter("bookdata"));
    String idbook = (String)session.getAttribute("bookid");
    String sql = "update books set bookname = ?, bookprice = ?, bookcount = ?, bookid = ?, bookauthor = ?, lendcounts = ?, bookpress = ?, bookdata = ? where bookid = ?";//参数用？表示，相当于占位符
    DBUtil db = new DBUtil();
    db.connectDB();
    PreparedStatement state = db.getConnection().prepareStatement(sql);
    state.setObject(9, idbook);
    state.setString(1, bookname);
    state.setInt(2, bookprice);
    state.setInt(3, bookcount);
    state.setInt(4, bookid);
    state.setString(5, bookauthor);
    state.setInt(6, 0);
    state.setString(7, bookpress);
    state.setString(8, bookdata);
    int res = state.executeUpdate();
    if (res > 0){
        out.println("<script>alert('修改成功！');window.location.href='managebooks.jsp';</script>");
    }
    else{
        out.println("<script>alert('修改失败！');history.go(-1);</script>");
    }
    state.close();

%>
</body>
</html>
