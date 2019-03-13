package com.Database;

public class Books {
    private String bookname;
    private String bookauthor;
    private int bookcount;
    private int bookprice;
    private int lendcounts;
    private String bookpress;
    private String bookdata;

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public int getBookcount() {
        return bookcount;
    }

    public void setBookcount(int bookcount) {
        this.bookcount = bookcount;
    }

    public int getLendcounts() {
        return lendcounts;
    }

    public void setLendcounts(int lendcounts) {
        this.lendcounts = lendcounts;
    }

    public String getBookpress() {
        return bookpress;
    }

    public void setBookpress(String bookpress) {
        this.bookpress = bookpress;
    }

    public String getBookdata() {
        return bookdata;
    }

    public void setBookdata(String bookdata) {
        this.bookdata = bookdata;
    }
}
