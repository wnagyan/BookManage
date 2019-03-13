package com.Database;

public class User {
    private String password;//用户密码
    private int studentid;//用户学号
    private String classes;//用户班级
    private String name;//用户姓名
    private boolean logined = false;//用户是否登入

    public int getStudentid() {
        return studentid;
    }

    public String getClasses() {
        return classes;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public void setStudentid(int studentid) {
        this.studentid = studentid;
    }

    public boolean isLogined() {
        return logined;
    }
    public void setLogined(boolean logined) {
        this.logined = logined;
    }
}
