package com.bd10.bootfirst.entity;

/**
 * Created by lenovo on 2019/12/19.
 */
public class Book {
    private int bid;
    private String bname;
    private double bprice;
    private Author author;
    private Relevance relevance;

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public double getBprice() {
        return bprice;
    }

    public void setBprice(double bprice) {
        this.bprice = bprice;
    }

    public Author getAuthor() {
        return author;
    }

    public Relevance getRelevance() {
        return relevance;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public void setRelevance(Relevance relevance) {
        this.relevance = relevance;
    }
    private  String aname;
    public String getAname() {
        return aname;
    }
    public void setAname(String aname) {
        this.aname = aname;
    }

    public Book(int bid, String bname, double bprice, Author author, Relevance relevance) {
        this.bid = bid;
        this.bname = bname;
        this.bprice = bprice;
        this.author = author;
        this.relevance = relevance;
    }
    public Book() {

    }
}