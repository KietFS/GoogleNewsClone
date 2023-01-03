package com.example.googlenewsclone.beans;

public class Tag_Has_Article {
    private int thaID;
    private int tagID;
    private int articleID;

    public Tag_Has_Article() {
    }

    public int getThaID() {
        return thaID;
    }

    public void setThaID(int thaID) {
        this.thaID = thaID;
    }

    public int getTagID() {
        return tagID;
    }

    public void setTagID(int tagID) {
        this.tagID = tagID;
    }

    public int getArticleID() {
        return articleID;
    }

    public void setArticleID(int articleID) {
        this.articleID = articleID;
    }

    public Tag_Has_Article(int thaID, int tagID, int articleID) {
        this.thaID = thaID;
        this.tagID = tagID;
        this.articleID = articleID;
    }


}
