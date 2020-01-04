package com.bd10.bootfirst.controller;


import com.bd10.bootfirst.entity.Book;
import com.bd10.bootfirst.service.StuService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class TestController {

    @Resource
    private StuService stuService;

    @RequestMapping("/init")
    public String test1() {
        System.out.println("hello");
        return "index";
    }

//    @RequestMapping("/search")
//    public String test2(@RequestParam("sid") int sid, Model model) {
//        Student student = stuService.getStu(sid);
//        model.addAttribute("msg", student.getSname());
//        return "index";
//    }


    @RequestMapping("/all")
    public String test3(HttpServletRequest request) {
        List<Book> students = stuService.getStus();
        request.setAttribute("stus", students);
        return "show";
    }
    @RequestMapping("/mohu")
    public String test3(HttpServletRequest request,String name) {
        List<Book> students = stuService.mohuStus(name);
        request.setAttribute("stus", students);
        return "show";
    }

    @RequestMapping(value = "/fenye")
    public String book(@RequestParam(value = "aName", required = false) String aName, @RequestParam(value = "page", required = false) Integer page, Model model) {
        if (aName == null) {
            aName = "";
        }
        if (page == null || page < 1) {
            page = 1;
        }
        List<Book> book = stuService.select(aName, page);
        int count=stuService.mohuStus(aName).size();
        model.addAttribute("book", book);
        model.addAttribute("page", page);
        model.addAttribute("name", aName);
        int s=count%5==0?count/5:(count/5)+1;
        model.addAttribute("count", s);
        return "show";
    }
}







