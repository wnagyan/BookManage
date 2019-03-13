<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/5/23
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>首页</title>
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
            #bobook{
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
            #rebook{
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
            #management{
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
            #login{
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
            .font{
                font-family: 楷体;
                font-size: 50px;
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
              <%
                  if (session.getAttribute("userid") == null) {
                      out.println("<a href=\"login.jsp\"><li class=\"opq\">登入</li></a>");
                  }
              %>
              <a href="personal.jsp"><li class="qaq">
              <%Object userid = session.getAttribute("userid");%>
              <%if(session.getAttribute("userid") != null)%><%="欢迎："+userid%>
              </li></a>
          </ul>
      </div>
      <div id="zhuti">
          <a href="bobook.jsp"><div id="bobook" class="font">借书</div></a>
          <a href="rebook.jsp"><div id="rebook" class="font">还书</div></a>
          <a href="management.jsp"><div id="management" class="font">管理</div></a>
          <a href="personal.jsp"><div id="login" class="font">用户</div></a>
      </div>
  </div>
  </body>
</html>
