package com.example.googlenewsclone.beans;

import java.sql.Date;

public class Comment {
    private int commentID;
    private String content;
    private Date date;
    private int userID;
    private int articleID;

    public Comment() {
    }

    public Comment(int commentID, String content, Date date, int userID, int articleID) {
        this.commentID = commentID;
        this.content = content;
        this.date = date;
        this.userID = userID;
        this.articleID = articleID;
    }
    public Comment(String content, Date date, int userID, int articleID) {
        this.commentID = -1;
        this.content = content;
        this.date = date;
        this.userID = userID;
        this.articleID = articleID;
    }

    public int getCommentID() {
        return commentID;
    }

    public void setCommentID(int commentID) {
        this.commentID = commentID;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getArticleID() {
        return articleID;
    }

    public void setArticleID(int articleID) {
        this.articleID = articleID;
    }
}
