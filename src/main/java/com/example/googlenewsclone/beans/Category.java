package com.example.googlenewsclone.beans;

public class Category {
    private int catID;
    private String catName;
    private int pCatID;

    public Category() {
    }

    public int getCatID() {
        return catID;
    }

    public void setCatID(int catID) {
        this.catID = catID;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public int getpCatID() {
        return pCatID;
    }

    public void setpCatID(int pCatID) {
        this.pCatID = pCatID;
    }

    public Category(int catID, String catName, int pCatID) {
        this.catID = catID;
        this.catName = catName;
        this.pCatID = pCatID;
    }
    public Category(String catName, int pCatID) {
        this.catID = -1;
        this.catName = catName;
        this.pCatID = pCatID;
    }

}
