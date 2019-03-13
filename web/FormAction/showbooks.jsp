<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>查看书籍</title>
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
        #bobook{
            margin: auto;
            overflow-y:auto;
            overflow-x:auto;
            width:1000px;
            height:300px;
        }
        #rebook{
            margin: auto;
            margin-top: 50px;
            overflow-y:auto;
            overflow-x:auto;
            width:1000px;
            height:300px;
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
        <div id="bobook">
            <table>
                <tr>
                    <th>序号</th>
                    <th>学号</th>
                    <th>姓名</th>
                    <th>班级</th>
                    <th>借书日期</th>
                    <th>还书日期</th>
                </tr>
                <%
                    request.setCharacterEncoding("utf-8");
                    DBUtil db = new DBUtil();
                    db.connectDB();
                    String bookid = new String(request.getParameter("bookid"));
                    String sql1 = "select * from bobook where bookid = ? and redata is not null";
                    PreparedStatement state = db.getConnection().prepareStatement(sql1);
                    state.setString(1, bookid);
                    ResultSet rs = state.executeQuery();//选择import java.sql.ResultSet;

                %>
                <%
                    int i = 0;
                    while (rs.next()) {//如果对象中有数据，就会循环打印出来
                        String idstudent = rs.getString("studentid");
                        String name = rs.getString("username");
                        String bodata = rs.getString("bodata");
                        String redata = rs.getString("redata");
                        String sql2 = "select classe from user where studentid = ?";
                        state = db.getConnection().prepareStatement(sql2);
                        state.setString(1, idstudent);
                        ResultSet rs1 = state.executeQuery();
                        rs1.next();
                        String classe = rs1.getString("classe");
                        i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=idstudent%></td>
                    <td><%=name%></td>
                    <td><%=classe%></td>
                    <td class="txt1"><%=bodata%></td>
                    <td class="txt1"><%=redata%></td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
        <div id="rebook">
            <%
                String sql3 = "select * from bobook where bookid = ? and redata is null";
                state = db.getConnection().prepareStatement(sql3);
                state.setString(1, bookid);
                ResultSet rs2 = state.executeQuery();//选择import java.sql.ResultSet;
            %>
            <table>
                <tr>
                    <th>序号</th>
                    <th>学号</th>
                    <th>姓名</th>
                    <th>班级</th>
                    <th>借书日期</th>
                    <th>还书日期</th>
                </tr>
                <%
                    int j = 0;
                    while (rs2.next()) {//如果对象中有数据，就会循环打印出来
                        String idstudent1 = rs2.getString("studentid");
                        String name1 = rs2.getString("username");
                        String bodata1 = rs2.getString("bodata");
                        String redata1 = rs2.getString("redata");
                        String sql4 = "select classe from user where studentid = ?";
                        state = db.getConnection().prepareStatement(sql4);
                        state.setString(1, idstudent1);
                        ResultSet rs3 = state.executeQuery();
                        rs3.next();
                        String classe1 = rs3.getString("classe");
                        j++;
                %>
                <tr>
                    <td><%=j%></td>
                    <td><%=idstudent1%></td>
                    <td><%=name1%></td>
                    <td><%=classe1%></td>
                    <td class="txt1"><%=bodata1%></td>
                    <td class="txt1"><%=redata1%></td>
                </tr>
                <%
                    }
                    state.close();
                %>
            </table>
        </div>
    </div>
</div>
</body>
</html>