package com.Database;

import java.sql.*;

public class DBUtil {
//    private static final String URL="jdbc:mysql://localhost:3306/book";
//    private static final String NAME="root";
//    private static final String PASSWORD="36012319980324";
//
//    private static Connection conn=null;
//    //静态代码块（将加载驱动、连接数据库放入静态块中）
//    static{
//        try {
//            //1.加载驱动程序
//            Class.forName("com.mysql.jdbc.Driver");
//            //2.获得数据库的连接
//            conn = DriverManager.getConnection(URL, NAME, PASSWORD);
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//    //对外提供一个方法来获取数据库连接
//    public static Connection getConnection(){
//        return conn;
//    }
    private Connection conn;
    private ResultSet rs;
    public int connectDB(){
        try{
            String host="localhost:3306";
            String database = "book";
            String name="root";
            String password="36012319980324";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://" + host + "/" + database + "?user=" + name + "&password=" + password);
            return 1;
        }catch (Exception e){
            e.printStackTrace();
            return -1;
        }
    }

    public Connection getConnection() {
        return conn;
    }

}