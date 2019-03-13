<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/6/13
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<html>
<head>
    <title>改密码</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    DBUtil db = new DBUtil();
    db.connectDB();
    String newpassword = new String(request.getParameter("newpassword"));
    String oldpassword = new String(request.getParameter("oldpassword"));
    String surepassword = new String(request.getParameter("surepassword"));
    String idstudent = (String)session.getAttribute("userid");
    String sql = "select userpassword from user where studentid = ?";
    PreparedStatement state = db.getConnection().prepareStatement(sql);
    state.setObject(1, idstudent);
    ResultSet rs = state.executeQuery();
    rs.next();
    String userpassword = rs.getString("userpassword");
    if(oldpassword.equals(userpassword)){
        if(newpassword.equals(surepassword)){
            String sql1 = "update user set userpassword = ?";
            state = db.getConnection().prepareStatement(sql1);
            state.setString(1, newpassword);
            int rse = state.executeUpdate();
            if(rse > 0){
                out.println("<script>alert('密码修改成功！');</script>");
                session.removeAttribute("userid");
                out.println("<script>window.location.href='index.jsp';</script>");
            }
            out.println("<script>alert('旧密码错误，请重试！');window.location.href='repassword.jsp';</script>");
        }else{
            out.println("<script>alert('确认密码与新密码不匹配！');window.location.href='repassword.jsp';</script>");
        }
    }else{
        out.println("<script>alert('旧密码错误，请重试！');window.location.href='repassword.jsp';</script>");
    }
%>
</body>
</html>
