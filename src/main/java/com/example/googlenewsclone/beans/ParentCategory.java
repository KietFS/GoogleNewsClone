package com.example.googlenewsclone.beans;

public class ParentCategory {
    private int pCatID;
    private String pCatName;

    public ParentCategory() {
    }

    public ParentCategory(int pCatID, String pCatName) {
        this.pCatID = pCatID;
        this.pCatName = pCatName;
    }
    public ParentCategory(String pCatName) {
        this.pCatID = -1;
        this.pCatName = pCatName;
    }

    public int getpCatID() {
        return pCatID;
    }

    public String getpCatName() {
        return pCatName;
    }

    public void setpCatName(String pCatName) {
        this.pCatName = pCatName;
    }

    public void setpCatID(int pCatID) {
        this.pCatID = pCatID;
    }
}
