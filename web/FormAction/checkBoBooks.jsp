<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/6/12
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Database.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>借书</title>
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
    int lendcounts = rsbook.getInt("lendcounts") + 1;
    int bookcount = rsbook.getInt("bookcount");
    String sql = "select * from bobook where bookid = ? and studentid = ? and redata is null";
    state = db.getConnection().prepareStatement(sql);
    state.setString(1, bookid);
    state.setString(2, studentid);
    ResultSet sure = state.executeQuery();
    int count = 0;
    while(sure.next()){
        count++;
    }
    if(count >= 1){
        out.println("<script>alert('你已经借过这本书了！');window.location.href='bobook.jsp';</script>");
    }else{
        if(lendcounts > bookcount) {
            out.println("<script>alert('这本书已经被借完了，换一本吧！');window.location.href='bobook.jsp';</script>");
        }
        else {
            String sql2 = "select * from user where studentid = ?";
            state = db.getConnection().prepareStatement(sql2);
            state.setString(1, studentid);
            ResultSet rsstudent = state.executeQuery();
            rsstudent.next();
            String studentname = rsstudent.getString("username");
            int bocounts = rsstudent.getInt("bocounts") + 1;
            //out.println(bookname + "<br>" + studentname);
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            //out.println(df.format(new Date()));

            String sql3 = "insert into bobook (bookid, studentid, bodata, bookname, username) value (?, ?, ?, ?, ? )";
            state = db.getConnection().prepareStatement(sql3);
            state.setString(1, bookid);
            state.setString(2, studentid);
            state.setString(3, df.format(new Date()));
            state.setString(4, bookname);
            state.setString(5, studentname);
            int rs = state.executeUpdate();
            if(rs > 0){
                out.println("<script>alert('借书成功！');window.location.href='bobook.jsp';</script>");
            }
            else{
                out.println("<script>alert('借书失败！');history.go(-1);</script>");
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
        }
    }

    state.close();
%>
</body>
</html>
