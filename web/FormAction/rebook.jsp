<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>还书</title>
    <style type="text/css">
        table {
            border: 10px ridge #96D9F6;
            /*border-spacing: 3px;!* 框与框之间的边距 *!*/
            margin: auto;
            font-family: 楷体;
            font-size: 20px;
        }

        td {
            font-family: 楷体;
            border: 4px inset #FFEF94;
            height: 40px;
            background: #C7FFEC;
            text-align: center;
            padding: 10px;
            color: #EA3C00;
            font-size: 20px;
        }

        .txt1 {
            width: 200px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        th {
            font-family: 楷体;
            padding: 5px;
            border: 10px ridge #EAE5A2;
            background: #EAC8A2;
            color: #007dea;
        }

        #background {
            margin-top: 0px;
            width: 100%;
            height: 900px;

        }

        #menu {
            list-style-type: none;
            display: block;
            width: 1220px;
            height: 50px;
            margin: auto;
            padding-top: 5px;
            margin-left: 16%;
        }

        a {
            text-decoration: none;
        }

        #daohang {
            width: 100%;
            height: 35px;
            background-color: #52C3DD;
        }

        li.lmn {
            color: black;
            float: left;
            display: block;
            font-size: 20px;
            font-family: 楷体;
            width: 60px;
            font-weight: bold;
        }

        li.opq {
            color: black;
            float: right;
            display: block;
            font-size: 20px;
            font-family: 楷体;
            width: 60px;
            font-weight: bold;
        }

        li:hover {
            color: red;
        }

        li.qaq {
            color: black;
            float: right;
            width: 200px;
            font-weight: bold;
            display: block;
            font-size: 20px;
            font-family: 楷体;
            padding-top: 0px;
        }
        .xyz{
            height: 30px;
            font-size: 20px;
            font-family: 楷体;
            font-weight: bold;
        }
        #search{
            text-align: center;
            margin-bottom: 50px;
        }
        #zhuti {
            width: 1200px;
            height: 850px;
            margin: auto;
            background-color: #F5FFFB;
            padding-top: 150px;
        }
    </style>
</head>
<body>
<%
    if(session.getAttribute("userid") == null){
        out.println("<script>alert('请先登入！');window.location.href='login.jsp';</script>");
    }
    request.setCharacterEncoding("utf-8");
    DBUtil db = new DBUtil();
    db.connectDB();
    String studentid = (String) session.getAttribute("userid");
    String sql = "select bookid, bookname, studentid, username, bodata from bobook where studentid = ? and redata is null";
    PreparedStatement state = db.getConnection().prepareStatement(sql);
    state.setString(1, studentid);
    ResultSet rs = state.executeQuery();
%>
<div id="background">
    <div id="daohang">
        <ul id="menu">
            <a href="index.jsp">
                <li class="lmn">首页</li>
            </a>
            <a href="bobook.jsp">
                <li class="lmn">借书</li>
            </a>
            <a href="rebook.jsp">
                <li class="lmn">还书</li>
            </a>
            <a href="management.jsp">
                <li class="lmn">管理</li>
            </a>
            <a href="loginOut.jsp">
                <li class="opq">
                    <%if (session.getAttribute("userid") != null)%><%="退出"%>
                </li>
            </a>
            <a href="personal.jsp">
                <li class="qaq">
                    <%Object userid = session.getAttribute("userid");%>
                    <%if (session.getAttribute("userid") != null)%><%="欢迎：" + userid%>
                </li>
            </a>
        </ul>
    </div>
    <div id="zhuti">
        <%--<form>--%>
        <%--<div id="search">--%>
        <%--<label class="xyz">请输入书号：</label>--%>
        <%--<input id="idbook" type="text" class="xyz">--%>
        <%--<input type="button" name="button1" value="查看" onclick="test1()" class="xyz">--%>
        <%--<input type="button" name="button2" value="修改" onclick="test2()" class="xyz">--%>
        <%--<input type="button" name="button3" value="删除" onclick="test3()" class="xyz">--%>
        <%--</div>--%>
        <%--</form>--%>
        <table>
            <tr>
                <th>序号</th>
                <th>书号</th>
                <th>书名</th>
                <th>借书日期</th>
                <th colspan="1">操作</th>
            </tr>
            <%
                int i = 0;
                while (rs.next()) {//如果对象中有数据，就会循环打印出来
                    String bookid = rs.getString("bookid");
                    String bookname = rs.getString("bookname");
                    String bodata = rs.getString("bodata");
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=bookid%></td>
                <td><div class="txt1"><%=bookname%></div></td>
                <td><div class="txt1"><%=bodata%></div></td>
                <td><a href="checkReBooks.jsp?bookid=<%=bookid%>">还书</a></td>
            </tr>
            <%
                }
                state.close();
            %>
        </table>
    </div>
</div>
</body>
</html>