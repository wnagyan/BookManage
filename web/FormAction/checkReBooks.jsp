<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/6/13
  Time: 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>还书</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    DBUtil db = new DBUtil();
    db.connectDB();
    String bookid = new String(request.getParameter("bookid"));
    String sql1 = "select * from books where bookid = ?";
    PreparedStatement state = db.getConnection().prepareStatement(sql1);
    state.setString(1, bookid);
    ResultSet rsbook = state.executeQuery();
    rsbook.next();
    String bookname = rsbook.getString("bookname");
    String studentid = (String) session.getAttribute("userid");
    int lendcounts = rsbook.getInt("lendcounts") - 1;


    String sql2 = "select * from user where studentid = ?";
    state = db.getConnection().prepareStatement(sql2);
    state.setString(1, studentid);
    ResultSet rsstudent = state.executeQuery();
    rsstudent.next();
    String studentname = rsstudent.getString("username");
    int bocounts = rsstudent.getInt("bocounts") - 1;
    //out.println(bookname + "<br>" + studentname);
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
    //out.println(df.format(new Date()));

    String sql3 = "update bobook set redata = ? where bookid = ? and studentid = ? and redata is null";
    state = db.getConnection().prepareStatement(sql3);
    state.setString(1, df.format(new Date()));
    state.setString(2, bookid);
    state.setString(3, studentid);
    int rs = state.executeUpdate();
    if(rs > 0){
        out.println("<script>alert('还书成功！');window.location.href='rebook.jsp';</script>");
    }
    else{
        out.println("<script>alert('还书失败！');history.go(-1);</script>");
    }

    String sql4 = "update books set lendcounts = ? where bookid = ?";
    state = db.getConnection().prepareStatement(sql4);
    state.setString(2, bookid);
    state.setInt(1, lendcounts);
    state.executeUpdate();

    String sql5 = "update user set bocounts = ? where studentid = ?";
    state = db.getConnection().prepareStatement(sql5);
    state.setInt(1, bocounts);
    state.setString(2, studentid);
    state.executeUpdate();
    state.close();
%>
</body>
</html>
