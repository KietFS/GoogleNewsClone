package com.example.googlenewsclone.beans;

import java.time.LocalDateTime;

public class Article {
    private int articleID;
    private String title;
    private LocalDateTime publish_date;
    private int views;
    private String subContent;
    private String content;
    private int catID;
    private boolean premium;
    private int writterID;
    private int statusID;
    private String thumbs_img;

    public Article(int articleID, String title, LocalDateTime publish_date, int views, String subContent, String content, int catID, boolean premium, int writterID, int statusID, String thumbs_img) {
        this.articleID = articleID;
        this.title = title;
        this.publish_date = publish_date;
        this.views = views;
        this.subContent = subContent;
        this.content = content;
        this.catID = catID;
        this.premium = premium;
        this.writterID = writterID;
        this.statusID = statusID;
        this.thumbs_img = thumbs_img;
    }

    public Article() {
    }
    public Article(String title, LocalDateTime publish_date, int views, String subContent, String content, int catID, boolean premium, int writterID, int statusID, String thumbs_img) {
        this.articleID = -1;
        this.title = title;
        this.publish_date = publish_date;
        this.views = views;
        this.subContent = subContent;
        this.content = content;
        this.catID = catID;
        this.premium = premium;
        this.writterID = writterID;
        this.statusID = statusID;
        this.thumbs_img = thumbs_img;
    }
    public String getThumbs_img() {
        return thumbs_img;
    }

    public void setThumbs_img(String thumbsImg) {
        this.thumbs_img = thumbsImg;
    }
    public int getArticleID() {
        return articleID;
    }

    public void setArticleID(int articleID) {
        this.articleID = articleID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public LocalDateTime getPublish_date() {
        return publish_date;
    }

    public void setPublish_date(LocalDateTime publish_date) {
        this.publish_date = publish_date;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }

    public String getSubContent() {
        return subContent;
    }

    public void setSubContent(String subContent) {
        this.subContent = subContent;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getCatID() {
        return catID;
    }

    public void setCatID(int catID) {
        this.catID = catID;
    }

    public boolean isPremium() {
        return premium;
    }

    public void setPremium(boolean premium) {
        this.premium = premium;
    }

    public int getWritterID() {
        return writterID;
    }

    public void setWritterID(int writterID) {
        this.writterID = writterID;
    }

    public int getStatusID() {
        return statusID;
    }

    public void setStatusID(int statusID) {
        this.statusID = statusID;
    }
}
