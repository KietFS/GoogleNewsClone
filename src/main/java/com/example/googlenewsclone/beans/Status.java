package com.example.googlenewsclone.beans;

public class Status {
    private int statusID;
    private String statusName;

    public Status() {
    }

    public Status(int statusID, String statusName) {
        this.statusID = statusID;
        this.statusName = statusName;
    }
    public Status(String statusName) {
        this.statusID = -1;
        this.statusName = statusName;
    }

    public int getStatusID() {
        return statusID;
    }

    public void setStatusID(int statusID) {
        this.statusID = statusID;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }
}
