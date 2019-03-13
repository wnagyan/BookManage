<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/5/27
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理</title>
    <style>
        #background{
            margin-top: 0px;
            width: 100%;
            height: 900px;
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
        a{
            text-decoration: none;
        }
        #daohang{
            width: 100%;
            height: 35px;
            background-color: #52C3DD;
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
        li:hover{
            color: red;
        }
        li.qaq{
            color: black;
            float: right;
            width: 200px;
            font-weight: bold;
            display: block;
            font-size: 20px;
            font-family: 楷体;
            padding-top: 0px;
        }
        #addbooks{
            color: black;
            border: 0px none;
            border-radius: 25px;
            display: inline-block;
            line-height: 200px;
            vertical-align: middle;
            text-align: center;
            width: 200px;
            height: 200px;
            background-color: #FFFEA0;
            margin-left: 390px;
            margin-bottom: 10px;
            float: left;
            box-shadow: 2px 2px 5px 1px #FFEF61;
        }
        #adduser{
            color: black;
            border: 0px none;
            border-radius: 25px;
            line-height: 200px;
            display: inline-block;
            vertical-align: middle;
            text-align: center;
            float: right;
            width: 200px;
            height: 200px;
            background-color: #C7FFEC;
            margin-right: 390px;
            margin-bottom: 10px;
            box-shadow: -2px 2px 5px 1px #B2DBD5;
        }
        #managebooks{
            color: black;
            border: 0px none;
            border-radius: 25px;
            line-height: 200px;
            display: inline-block;
            vertical-align: middle;
            text-align: center;
            width: 200px;
            height: 200px;
            background-color: #FAD7D9;
            margin-left: 390px;
            margin-top: 10px;
            float: left;
            box-shadow: 2px -2px 5px 1px #FFB6C1;
        }
        #manageuser{
            color: black;
            border: 0px none;
            border-radius: 25px;
            line-height: 200px;
            display: inline-block;
            vertical-align: middle;
            text-align: center;
            float: right;
            width: 200px;
            height: 200px;
            background-color: #96D9F6;
            margin-right: 390px;
            margin-top: 10px;
            box-shadow: -2px -2px 5px 1px #7bbfea;
        }
        /*#addbooks{*/
            /*color: black;*/
            /*border: 0px none;*/
            /*border-radius: 25px;*/
            /*display: inline-block;*/
            /*line-height: 165px;*/
            /*vertical-align: middle;*/
            /*text-align: center;*/
            /*width: 165px;*/
            /*height: 165px;*/
            /*background-color: #FFFEA0;*/
            /*margin-left: 260px;*/
            /*margin-bottom: 10px;*/
            /*float: left;*/
            /*box-shadow: 4px 4px 10px 1px #FFEF61;*/
        /*}*/
        /*#adduser{*/
            /*color: black;*/
            /*border: 0px none;*/
            /*border-radius: 25px;*/
            /*line-height: 165px;*/
            /*display: inline-block;*/
            /*vertical-align: middle;*/
            /*text-align: center;*/
            /*float: right;*/
            /*width: 165px;*/
            /*height: 165px;*/
            /*background-color: #C7FFEC;*/
            /*margin-right: 260px;*/
            /*margin-bottom: 10px;*/
            /*box-shadow: -4px 4px 10px 1px #B2DBD5;*/
        /*}*/
        /*#editbooks{*/
            /*color: black;*/
            /*border: 0px none;*/
            /*border-radius: 25px;*/
            /*line-height: 165px;*/
            /*display: inline-block;*/
            /*vertical-align: middle;*/
            /*text-align: center;*/
            /*width: 165px;*/
            /*height: 165px;*/
            /*background-color: #FAD7D9;*/
            /*margin-left: 260px;*/
            /*margin-top: 10px;*/
            /*float: left;*/
            /*box-shadow: 4px -4px 10px 1px #FFB6C1;*/
        /*}*/
        /*#edituser{*/
            /*color: black;*/
            /*border: 0px none;*/
            /*border-radius: 25px;*/
            /*line-height: 165px;*/
            /*display: inline-block;*/
            /*vertical-align: middle;*/
            /*text-align: center;*/
            /*float: right;*/
            /*width: 165px;*/
            /*height: 165px;*/
            /*background-color: #96D9F6;*/
            /*margin-right: 260px;*/
            /*margin-top: 10px;*/
            /*box-shadow: -4px -4px 10px 1px #7bbfea;*/
        /*}*/
        /*#delectbooks{*/
            /*color: black;*/
            /*border: 0px none;*/
            /*border-radius: 25px;*/
            /*display: inline-block;*/
            /*line-height: 160px;*/
            /*vertical-align: middle;*/
            /*text-align: center;*/
            /*width: 160px;*/
            /*height: 160px;*/
            /*background-color: #FFFEA0;*/
            /*margin-left: 430px;*/
            /*margin-bottom: 10px;*/
            /*float: left;*/
            /*box-shadow: 2px 2px 5px 1px #FFEF61;*/
        /*}*/
        /*#delectuser{*/
            /*color: black;*/
            /*border: 0px none;*/
            /*border-radius: 25px;*/
            /*line-height: 160px;*/
            /*display: inline-block;*/
            /*vertical-align: middle;*/
            /*text-align: center;*/
            /*float: right;*/
            /*width: 160px;*/
            /*height: 160px;*/
            /*background-color: #C7FFEC;*/
            /*margin-right: 430px;*/
            /*margin-bottom: 10px;*/
            /*box-shadow: -2px 2px 5px 1px #B2DBD5;*/
        /*}*/
        /*#showbooks{*/
            /*color: black;*/
            /*border: 0px none;*/
            /*border-radius: 25px;*/
            /*line-height: 160px;*/
            /*display: inline-block;*/
            /*vertical-align: middle;*/
            /*text-align: center;*/
            /*width: 160px;*/
            /*height: 160px;*/
            /*background-color: #FAD7D9;*/
            /*margin-left: 430px;*/
            /*margin-top: 10px;*/
            /*float: left;*/
            /*box-shadow: 2px -2px 5px 1px #FFB6C1;*/
        /*}*/
        /*#showuser{*/
            /*color: black;*/
            /*border: 0px none;*/
            /*border-radius: 25px;*/
            /*line-height: 160px;*/
            /*display: inline-block;*/
            /*vertical-align: middle;*/
            /*text-align: center;*/
            /*float: right;*/
            /*width: 160px;*/
            /*height: 160px;*/
            /*background-color: #96D9F6;*/
            /*margin-right: 430px;*/
            /*margin-top: 10px;*/
            /*box-shadow: -2px -2px 5px 1px #7bbfea;*/
        /*}*/
        .font{
            font-family: 楷体;
            font-size: 40px;

        }
        #zhuti{
            width: 1200px;
            height: 700px;
            margin: auto;
            background-color: #F5FFFB;
            padding-top: 200px;
        }
    </style>
</head>
<body>
<%
    Object idstudent = new String("16050539336");
    if(session.getAttribute("userid") == null){
        out.println("<script>alert('请先登入！');window.location.href='login.jsp';</script>");
    }else if(!session.getAttribute("userid").equals(idstudent)){
        out.println("<script>alert('你不是管理员！无法访问此页面。');window.location.href='index.jsp';</script>");
    }
%>
<div id="background">
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
                <%Object studentid = session.getAttribute("userid");%>
                <%if(session.getAttribute("userid") != null)%><%="欢迎："+studentid%>
            </li></a>
        </ul>
    </div>
    <div id="zhuti">
        <a href="addbooks.jsp"><div id="addbooks" class="font">添加书籍</div></a>
        <a href="adduser.jsp"><div id="adduser" class="font">添加用户</div></a>
        <a href="managebooks.jsp"><div id="managebooks" class="font">管理书籍</div></a>
        <a href="manageuser.jsp"><div id="manageuser" class="font">管理用户</div></a>
    </div>
</div>

</body>
</html>
