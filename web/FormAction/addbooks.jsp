<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/5/30
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
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
        #neirong{
            border: 0px none;
            border-radius: 25px;
            width: 500px;
            height: 550px;
            margin: auto;
            background-color: #B9ECED;
            padding-left: auto;
            box-shadow: 2px 2px 5px 1px #87CEFA;
        }
        .xyz{
            height: 30px;
            font-size: 20px;
        }
        fieldset{
            border: 0;
            padding-top: 50px;
            padding-right: 60px;
        }
        #zhuti{
            width: 1200px;
            height: 750px;
            margin: auto;
            background-color: #F5FFFB;
            padding-top: 150px;
        }
        .abc{
            height: 30px;
            font-size: 40px;
            font-family: 楷体;
            margin-top: 30px;
            margin-top: 25px;
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
            <a href="personal.jsp"><li class="qaq">
                <%Object userid = session.getAttribute("userid");%>
                <%="欢迎："+userid%>
            </li></a>
        </ul>
    </div>
    <div id="zhuti">
        <div id="neirong">
            <form action="checkAddBook.jsp" method="post">
                <fieldset>
                    <div id="bookname" class="abc">
                        <label for="bookname">书名</label>
                        <input type="text" name="bookname" size="15" required class="xyz">
                    </div>
                    <div id = "bookid" class="abc">
                        <label for = "bookid">书号</label>
                        <input type="text" name="bookid" size="15" required class="xyz">
                    </div>
                    <div id="bookauthor" class="abc">
                        <label for="bookauthor">作者</label>
                        <input type="text" name="bookauthor" size="15" class="xyz">
                    </div>
                    <div id="bookprice" class="abc">
                        <label for="bookprice">价格</label>
                        <input type="text" name="bookprice" size="15" class="xyz">
                    </div>
                    <div id="bookcount" class="abc">
                        <label for="bookcount">数量</label>
                        <input type="text" name="bookcount" size="15" required class="xyz">
                    </div>
                    <div id="bookpress" class="abc">
                        <label for="bookpress">出版社</label>
                        <input type="text" name="bookpress" size="15" class="xyz">
                    </div>
                    <div id="bookdata" class="abc">
                        <label for="bookdata">出版日期</label>
                        <input type="text" name="bookdata" size="15" class="xyz">
                    </div>
                    <div id="submit">
                        <input type="submit" value="添加" class="submit">
                        <a href="addbooks.jsp"><input type="reset" value="重填" class="reset"></a>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>

</body>
</html>
