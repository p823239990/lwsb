package com.bd10.bootfirst.service.impl;

import com.bd10.bootfirst.dao.StuDao;
import com.bd10.bootfirst.entity.Book;
import com.bd10.bootfirst.service.StuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StuServiceImpl implements StuService {

    @Resource
    private StuDao stuDao;



    @Override
    public List<Book> getStus() {
        return stuDao.getStus();
    }

    @Override
    public List<Book> mohuStus(String name) {
        return stuDao.mohuStus(name);
    }

    @Override
    public List<Book> select(String aName, Integer page) {
        return stuDao.select(aName,(page-1)*5);
    }


}
