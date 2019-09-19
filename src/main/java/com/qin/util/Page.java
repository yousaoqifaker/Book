package com.qin.util;

/**
 * @program: Book
 * @description: 分页
 * @author: qin
 * @create: 2019-09-19 20:11
 **/

public class Page {
    int start;
    int count;
    int total;

    public Page(int start, int count) {
        super();
        this.start = start;
        this.count = count;
    }
    public boolean isHasPreviouse(){
        return start != 0;
    }
    public  boolean isHasNext(){
        return start != getLast();
    }
    public int getTotalPage(){
        int totalPage;
        if (0 ==total%count){
            totalPage=total/count;
        }else {
            totalPage=total/count + 1;
        }
        if (0==totalPage){
            totalPage = 1;
        }
        return totalPage;
    }
    private int getLast() {
        int last;
        if (0==total%count){
            last=total-count;
        }else {
            last=total-total%count;
        }
        last=last<0?0:last;
        return last;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
