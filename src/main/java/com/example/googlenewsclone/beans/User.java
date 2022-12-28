package com.example.googlenewsclone.beans;

import java.time.LocalDateTime;

public class User {
    private int userID;
    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private LocalDateTime date;
    private int expiration;
    private int roleID;
    private LocalDateTime dob;
    private String email;
    private String otp;
    private LocalDateTime otp_exp;

    public User(int userID, String username, String password, String firstName, String lastName, LocalDateTime date, int expiration, int roleID, LocalDateTime dob, String email, String otp, LocalDateTime otp_exp) {
        this.userID = userID;
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.date = date;
        this.expiration = expiration;
        this.roleID = roleID;
        this.dob = dob;
        this.email = email;
        this.otp = otp;
        this.otp_exp = otp_exp;
    }

    public User() {
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public int getExpiration() {
        return expiration;
    }

    public void setExpiration(int expiration) {
        this.expiration = expiration;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public LocalDateTime getDob() {
        return dob;
    }

    public void setDob(LocalDateTime dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOtp() {
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }

    public LocalDateTime getOtp_exp() {
        return otp_exp;
    }

    public void setOtp_exp(LocalDateTime otp_exp) {
        this.otp_exp = otp_exp;
    }

    public User(String username, String password, String firstName, LocalDateTime date, int expiration, int roleID, String email) {
        this.userID = -1;
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.date = date;
        this.expiration = expiration;
        this.roleID = roleID;
        this.email = email;
    }
}
