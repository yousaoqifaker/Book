package com.qin.dao;

import com.qin.po.Book;

/** 
* @Description: Dao层 
* @Param:  
* @return:  
* @Author: Qin
* @Date: 2019/9/15 
*/ 
public interface BookDao {
    /**
     * 查找所有书本
     * @return book对象
     */
   Book findBook();

    /**
     * 添加书本
     * @param book
     */
   void addBook(Book book);

    /**
     * 得到更新的数据
     * @param id
     * @return book
     */
   Book getBookDate(Integer id);

    /**
     * 更新数据
     * @param book
     */
   void updateBook(Book book);

    /**
     * 删除数据
     * @param id
     */
   void deleteBook(Integer id);
}
