<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/6/3
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="com.Database.*" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>验证登入</title>
</head>
<body>
<%

    request.setCharacterEncoding("utf-8");
    String studentid = new String(request.getParameter("studentid"));
    String password = new String(request.getParameter("password"));
    String sql = "select * from user where studentid= ? and userpassword= ?";
    User user = new User();
    DBUtil db = new DBUtil();
    db.connectDB();
    PreparedStatement pstam = db.getConnection().prepareStatement(sql);
    pstam.setString(1, studentid);
    pstam.setString(2, password);
    ResultSet rs = pstam.executeQuery();
    if(session.getAttribute("userid") != null){
        out.println("<script>alert('已经有人登入了！');window.location.href='index.jsp';</script>");
    }else{
        if(rs.next()){
            user.setLogined(true);
            out.println("<script>window.location.href='index.jsp';</script>");
            session.setAttribute("userid", studentid);
            //session.setMaxInactiveInterval(60);//最大失效时间：即使关闭浏览器，也要等60s才能重新登入
        }else{
            user.setLogined(false);
            out.println("<script>alert('你的账号或密码错误！');history.go(-1);</script>");
        }
    }
    pstam.close();
%>
</body>
</html>
