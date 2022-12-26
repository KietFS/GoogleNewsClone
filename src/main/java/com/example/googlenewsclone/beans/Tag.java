package com.example.googlenewsclone.beans;

public class Tag {
    private int tagID;
    private String tagName;

    public Tag() {
    }

    public Tag(int tagID, String tagName) {
        this.tagID = tagID;
        this.tagName = tagName;
    }
    public Tag(String tagName) {
        this.tagID = -1;
        this.tagName = tagName;
    }

    public int getTagID() {
        return tagID;
    }

    public void setTagID(int tagID) {
        this.tagID = tagID;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }
}
