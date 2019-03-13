<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>管理用户</title>
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
        .txt2:hover{
            cursor:pointer;
        }
        .txt1 {
            width: 100px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
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
            height: 700px;
            margin: auto;
            background-color: #F5FFFB;
            padding-top: 200px;
        }
    </style>
    <%--<script type="text/javascript">--%>
        <%--function test3() {--%>
            <%--var idstudent = document.getElementById("idstudent").value;--%>
            <%--var myurl = "deleteuser.jsp" + "?" + "studentid=" + idstudent;--%>
            <%--window.location.href = myurl;--%>
        <%--}--%>
        <%--function test1() {--%>
            <%--var idstudent = document.getElementById("idstudent").value;--%>
            <%--var myurl = "showuser.jsp" + "?" + "studentid=" + idstudent;--%>
            <%--window.location.href = myurl;--%>
        <%--}--%>
        <%--function test2() {--%>
            <%--var idstudent = document.getElementById("idstudent").value;--%>
            <%--var myurl = "edituser.jsp" + "?" + "studentid=" + idstudent;--%>
            <%--window.location.href = myurl;--%>
        <%--}--%>
    <%--</script>--%>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    DBUtil db = new DBUtil();
    db.connectDB();
    String sql = "select * from user";
    PreparedStatement state = db.getConnection().prepareStatement(sql);
    ResultSet rs = state.executeQuery();//选择import java.sql.ResultSet;
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
                <%--<label class="xyz">请输入学号：</label>--%>
                <%--<input id="idstudent" type="text" class="xyz">--%>
                <%--<input type="button" name="button1" value="查看" onclick="test1()" class="xyz">--%>
                <%--<input type="button" name="button2" value="修改" onclick="test2()" class="xyz">--%>
                <%--<input type="button" name="button3" value="删除" onclick="test3()" class="xyz">--%>
            <%--</div>--%>
        <%--</form>--%>
        <table>
            <tr>
                <th>序号</th>
                <th>学号</th>
                <th>姓名</th>
                <th>班级</th>
                <th>借书数量</th>
                <th>密码</th>
                <th colspan="3">操作</th>
            </tr>
            <%
                int i = 0;
                while (rs.next()) {//如果对象中有数据，就会循环打印出来
                    String idstudent = rs.getString("studentid");
                    String name = rs.getString("username");
                    String classe = rs.getString("classe");
                    String bocount = rs.getString("bocounts");
                    String password = rs.getString("userpassword");
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=idstudent%></td>
                <td><%=name%></td>
                <td><%=classe%></td>
                <td><%=bocount%></td>
                <td class="txt1"><%=password%></td>
                <td><a href="showuser.jsp?studentid=<%=idstudent%>">查看</a></td>
                <td><a href="edituser.jsp?studentid=<%=idstudent%>">修改</a></td>
                <td><a href="deleteuser.jsp?studentid=<%=idstudent%>">删除</a></td>
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