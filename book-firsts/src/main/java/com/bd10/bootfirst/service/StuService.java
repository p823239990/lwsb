package com.bd10.bootfirst.service;

import com.bd10.bootfirst.entity.Book;

import java.util.List;

public interface StuService {



    List<Book> getStus();
    List<Book> mohuStus(String name);//模糊查询
    List<Book>select(String aName,Integer page);//分页


}
