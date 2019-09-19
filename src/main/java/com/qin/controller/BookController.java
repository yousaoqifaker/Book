package com.qin.controller;

import com.qin.po.Book;
import com.qin.service.BookService;
import com.qin.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @program: Book
 * @description: mvc控制类
 * @author: qin
 * @create: 2019-09-19 19:53
 **/
@Controller
@RequestMapping("")
public class BookController {
    private BookService bookService;
    @Autowired
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping("/addBook")
    public String addBook(HttpServletResponse response, HttpServletRequest request){
        Book book=new Book();
        String isbn=request.getParameter("isbn");
        String name=request.getParameter("name");
        String zuo=request.getParameter("zuo");
        String chu=request.getParameter("chu");
        String jia=request.getParameter("jia");
        String ce=request.getParameter("ce");
        book.setIsbn(isbn);
        book.setName(name);
        book.setZuo(zuo);
        book.setChu(chu);
        book.setJia(jia);
        book.setCe(ce);
        bookService.addBook(book);
        return "redirect:listBook";
    }
    @RequestMapping("listBook")
    public String listBook(HttpServletRequest request,HttpServletResponse response){
        int start=0;
        int count=10;
        try {
            start=Integer.parseInt(request.getParameter("page.start"));
            count=Integer.parseInt(request.getParameter("page.count"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        Page page=new Page(start,count);
        List<Book>list=bookService.list(page.getStart(),page.getCount());
        int total=bookService.getTotal();
        page.setTotal(total);
        request.setAttribute("book",list);
        request.setAttribute("page",page);
        return "listBook";
    }
}
