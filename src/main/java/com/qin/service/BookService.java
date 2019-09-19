package com.qin.service;

import com.qin.po.Book;

import java.util.List;

public interface BookService {
    /**
     * 获取数据条目
     * @return 数据条目 int
     */
    int getTotal();

    /**
     * 添加书本
     * @param book 书本信息
     */
    void addBook(Book book);

    /**
     * 删除一条信息
     * @param id 根据id删除
     */
    void deleteBook(int id);

    /**
     * 更新书本信息
     * @param book 接收的书本信息
     */
    void updateBook(Book book);

    /**
     * 获取要给更新的书本信息
     * @return book
     */
    Book getBook(int id);

    /**
     * 列举从start开始的count条数据
     * @param start 开始
     * @param count 数目
     * @return List
     */
    List<Book>list(int start,int count);
}
