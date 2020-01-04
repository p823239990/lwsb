package com.bd10.bootfirst.dao;

import com.bd10.bootfirst.entity.Book;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StuDao {


    List<Book> getStus();//查询所有
    List<Book> mohuStus(@Param("name")String aname);//模糊查询
    List<Book>select (@Param("aName")String aName,@Param("page") Integer page);



}
