package com.qin.po;

/**
 * @program: Book
 * @description: 书本对象类
 * @author: qin
 * @create: 2019-09-15 20:54
 **/

public class Book {
    private Integer id;
    private String isbn;
    private String name;
    private String zuo;
    private String chu;
    private String jia;
    private String ce;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getZuo() {
        return zuo;
    }

    public void setZuo(String zuo) {
        this.zuo = zuo;
    }

    public String getChu() {
        return chu;
    }

    public void setChu(String chu) {
        this.chu = chu;
    }

    public String getJia() {
        return jia;
    }

    public void setJia(String jia) {
        this.jia = jia;
    }

    public String getCe() {
        return ce;
    }

    public void setCe(String ce) {
        this.ce = ce;
    }
}
