package com.zr.entity;

import java.util.Date;

/**
 * @author: LiGX
 * @Date: 2019-03-19 下午 1:44
 */
public class Comment {
    private int cId;
    private int newsId;
    private String title;
    private String content;
    private String ipAddr;
    private Date commentDate;

    public Comment() {
    }

    public Comment(int newsId, String content, String ipAddr, Date commentDate) {
        this.newsId = newsId;
        this.content = content;
        this.ipAddr = ipAddr;
        this.commentDate = commentDate;
    }
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    public int getcId() {
        return cId;
    }

    public void setc_id(int cId) {
        this.cId = cId;
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNews_id(int newsId) {
        this.newsId = newsId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getIpAddr() {
        return ipAddr;
    }

    public void setIp_addr(String ipAddr) {
        this.ipAddr = ipAddr;
    }

    public Date getCommentDate() {
        return commentDate;
    }

    public void setComment_date(Date commentDate) {
        this.commentDate = commentDate;
    }
}
