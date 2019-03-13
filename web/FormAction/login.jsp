<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/5/26
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登入界面</title>
    <style>
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
            height: 300px;
            margin: auto;
            background-color: #B9ECED;
            padding-left: auto;
            box-shadow: 2px 2px 2px 1px #87CEFA;
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
            margin-left: 35%;
            height: 30px;
            font-size: 25px;
            font-family: 楷体;
            font-weight: bold;
        }
        #zhuti{
            width: 1200px;
            height: 700px;
            margin: auto;
            background-color: #F5FFFB;
            padding-top: 250px;
        }
        #daohang{
            width: 100%;
            height: 35px;
            background-color: #52C3DD;
        }
        a{
            text-decoration: none;
        }
        li.lmn{
            color: black;
            float: left;
            display: block;
            font-size: 20px;
            font-family: 楷体;
            width: 60px;
            font-weight: bold;
        }
        li.opq{
            color: black;
            float: right;
            display: block;
            font-size: 20px;
            font-family: 楷体;
            width: 60px;
            font-weight: bold;
        }
        #menu{
            list-style-type: none;
            display: block;
            width: 1220px;
            height: 50px;
            margin: auto;
            padding-top: 5px;
            margin-left: 16%;
        }
        li.qaq{
            float: right;
            width: 200px;
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
        </ul>
    </div>
    <div id="zhuti">
        <div id="neirong">
            <form action="checkLogin.jsp" method="post">
                <fieldset>
                    <div id="studentid" class="abc">
                        <label for="studentid">学号</label>
                        <input type="text" name="studentid" size="15" required class="xyz">
                    </div>
                    <div id="password" class="abc">
                        <label for="password">密码</label>
                        <input type="password" name="password" size="15" required class="xyz">
                    </div>
                    <div id="submit">
                        <input type="submit" value="登入" class="submit">
                        <a href="login.jsp"><input type="reset" value="重填" class="reset"></a>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>

</body>
</html>
