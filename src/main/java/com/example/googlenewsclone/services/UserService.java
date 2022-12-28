package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.User;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class UserService {
    public static List<User> findAll(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from users;";

            return con.createQuery(query)
                    .executeAndFetch(User.class);
        }
    }
    public static User findByUsername (String username){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from users where username = :username;";

            List<User> list = con.createQuery(query)
                    .addParameter("username", username)
                    .executeAndFetch(User.class);
            if (list.size() == 0) {
                return null;
            }
            return list.get(0);
        }
    }
    public static void add(User u) {

        try (Connection con = DbUtils.getConnection()) {
            final String query = "INSERT INTO users (username, password, first_name, issue_at, role_id, email, otp, otp_exp, expiration) VALUES (:username,:password,:first_name,:issue_at,:role_id,:email,:otp,:otp_exp,:expiration)";
            con.createQuery(query)
                    .addParameter("username", u.getUsername())
                    .addParameter("password", u.getPassword())
                    .addParameter("first_name", u.getFirstName())
                    .addParameter("role_id", u.getRoleID())
                    .addParameter("email", u.getUsername())
                    .addParameter("expiration", u.getExpiration())
                    .addParameter("issue_at", u.getDate())
                    .addParameter("otp", u.getOtp())
                    .addParameter("otp_exp", u.getOtp_exp())
                    .executeUpdate();
        }

    }
}

