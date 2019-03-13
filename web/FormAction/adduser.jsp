<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/5/27
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
    <style>
        li.lmn{
            color: black;
            float: left;
            display: block;
            font-size: 20px;
            font-family: 楷体;
            width: 60px;
            font-weight: bold;
            margin-top: 5px;
        }
        li.opq{
            color: black;
            float: right;
            display: block;
            font-size: 20px;
            font-family: 楷体;
            width: 60px;
            font-weight: bold;
            margin-top: 5px;
        }
        #menu{
            list-style-type: none;
            display: block;
            width: 1220px;
            height: 50px;
            margin-left: 16%;
        }
        a{
            text-decoration: none;
        }
        #zhuti{
            width: 1200px;
            height: 650px;
            margin: auto;
            background-color: #F5FFFB;
            padding-top: 250px;
        }
        #daohang{
            width: 100%;
            height: 35px;
            background-color: #52C3DD;
        }
        fieldset{
            border: 0;
            padding-top: 50px;
            padding-right: 60px;
        }
        .xyz{
            height: 30px;
            font-size: 20px;
        }
        input.reset{
            height: 30px;
            font-size: 25px;
            font-family: 楷体;
            font-weight: bold;
            margin-left: 60px;
        }
        input.submit{
            margin-top: 40px;
            margin-left: 32%;
            height: 30px;
            font-size: 25px;
            font-family: 楷体;
            font-weight: bold;
        }
        label{
            display: block;
            width: 40%;
            float: left;
            text-align: right;
            margin-right: 10px;
            font-size: 25px;
            font-family: 楷体;
            font-weight: bold;
        }
        .abc{
            height: 30px;
            font-size: 40px;
            font-family: 楷体;
            margin-top: 30px;
            margin-top: 25px;
        }
        #background{
            margin-top: 0px;
            width: 100%;
            height: 900px;
        }
        #neirong{
            border: 0px none;
            border-radius: 25px;
            width: 500px;
            height: 350px;
            margin: auto;
            background-color: #B9ECED;
            padding-left: auto;
            box-shadow: 2px 2px 5px 1px #87CEFA;
        }
        li.qaq{
            color: black;
            float: right;
            width: 200px;
            font-weight: bold;
            display: block;
            font-size: 20px;
            font-family: 楷体;
            padding-top: 5px;
        }
    </style>
</head>
<body>
<div id = "background">
    <div id="daohang">
        <ul id="menu">
            <a href="index.jsp"><li class="lmn">首页</li></a>
            <a href="bobook.jsp"><li class="lmn">借书</li></a>
            <a href="rebook.jsp"><li class="lmn">还书</li></a>
            <a href="management.jsp"><li class="lmn">管理</li></a>
            <a href="loginOut.jsp"><li class="opq">
                <%if(session.getAttribute("userid") != null)%><%="退出"%>
            </li></a>
            <a href="personal.jsp"><li class="qaq">
                <%Object userid = session.getAttribute("userid");%>
                <%="欢迎："+userid%>
            </li></a>
        </ul>
    </div>
    <div id="zhuti">
        <div id="neirong">
            <form action="checkAddUser.jsp" method="post">
                <fieldset>
                    <div id="studentid" class="abc">
                        <label for="studentid">学号</label>
                        <input type="text" name="studentid" size="15" required class="xyz">
                    </div>
                    <div id = "username" class="abc">
                        <label for = "username">姓名</label>
                        <input type="text" name="username" size="15" required class="xyz">
                    </div>
                    <div id="classes" class="abc">
                        <label for="classes">班级</label>
                        <input type="text" name="classes" size="15" required class="xyz">
                    </div>
                    <div id="submit">
                        <input type="submit" value="添加" class="submit">
                        <a href="adduser.jsp"><input type="reset" value="重填" class="reset"></a>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>

</body>
</html>
