package com.example.googlenewsclone.beans;

public class Editor_Manage_Category {
    private int emcID;
    private int editorID;
    private int catID;

    public Editor_Manage_Category() {
    }

    public int getEmcID() {
        return emcID;
    }

    public void setEmcID(int emcID) {
        this.emcID = emcID;
    }

    public int getEditorID() {
        return editorID;
    }

    public void setEditorID(int editorID) {
        this.editorID = editorID;
    }

    public int getCatID() {
        return catID;
    }

    public void setCatID(int catID) {
        this.catID = catID;
    }

    public Editor_Manage_Category(int emcID, int editorID, int catID) {
        this.emcID = emcID;
        this.editorID = editorID;
        this.catID = catID;
    }
    public Editor_Manage_Category(int editorID, int catID) {
        this.emcID = -1;
        this.editorID = editorID;
        this.catID = catID;
    }
}
