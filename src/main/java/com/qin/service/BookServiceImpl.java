package com.qin.service;

import com.qin.dao.BookDao;
import com.qin.po.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: Book
 * @description: 实现Service接口类
 * @author: qin
 * @create: 2019-09-19 19:44
 **/
@Service
public class BookServiceImpl implements BookService {
    private BookDao bookDao;
    @Autowired
    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }
    public int getTotal() {
        return bookDao.getTotal();
    }

    public void addBook(Book book) {
        bookDao.addBook(book);
    }

    public void deleteBook(int id) {
        bookDao.deleteBook(id);
    }

    public void updateBook(Book book) {
        bookDao.updateBook(book);
    }

    public Book getBook(int id) {
        return bookDao.getBookDate(id);
    }

    public List<Book> list(int start, int count) {
        return bookDao.list(start,count);
    }
}
