package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.User;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;


import java.util.List;

public class UserService {
    public static List<User> findAll(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from users ORDER BY username;";

            return con.createQuery(query)
                    .executeAndFetch(User.class);
        }
    }
    public static User findByUsername (String username){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from users where username = :username;";

            List<User> list = con.createQuery(query)
                    .addParameter("username", username)
                    .throwOnMappingFailure(false)
                    .executeAndFetch(User.class);
            if(list.size() == 0)
                return null;
            return list.get(0);
        }
    }
    public static User findByID (int id){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from users where userid = :id;";

            List<User> list = con.createQuery(query)
                    .addParameter("id", id)
                    .throwOnMappingFailure(false)
                    .executeAndFetch(User.class);
            if(list.size() == 0)
                return null;
            return list.get(0);
        }
    }
    public static List<User> findAllUsernameCommentinArticle(int articleid){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select distinct u.userid, username from comments inner join users u on u.userid = comments.userid where articleid = :articleid;";

            List<User> list = con.createQuery(query)
                    .addParameter("articleid", articleid)
                    .throwOnMappingFailure(false)
                    .executeAndFetch(User.class);
            if(list.size() == 0)
                return null;
            return list;
        }
    }
    public static void add(User u) {

        try (Connection con = DbUtils.getConnection()) {
            final String query = "INSERT INTO users (username, password, firstName, issueAt, roleID, email, expiration) VALUES (:username,:password,:first_name,:issue_at,:role_id,:email,:expiration)";
            con.createQuery(query)
                    .addParameter("username", u.getUsername())
                    .addParameter("password", u.getPassword())
                    .addParameter("first_name", u.getFirstName())
                    .addParameter("role_id", u.getRoleID())
                    .addParameter("email", u.getUsername())
                    .addParameter("expiration", u.getExpiration())
                    .addParameter("issue_at", u.getIssueAt())
                    .executeUpdate();
        }

    }
    public static void update(User u){
        try(Connection con =DbUtils.getConnection()){
            final String query = "UPDATE users SET  firstname = :firstname, lastname = :lastname, dob = :dob, email = :email WHERE userid = :userid;";
            con.createQuery(query)
                    .addParameter("firstname", u.getFirstName())
                    .addParameter("lastname", u.getLastName())
                    .addParameter("dob", u.getDob())
                    .addParameter("email", u.getEmail())
                    .addParameter("userid", u.getUserID())
                    .executeUpdate();
        }
    }
    public static void updateRole(User u){
        try(Connection con =DbUtils.getConnection()){
            final String query = "UPDATE users SET roleid = :roleid WHERE userid = :userid;";
            con.createQuery(query)
                    .addParameter("userid", u.getUserID())
                    .addParameter("roleid", u.getRoleID())
                    .executeUpdate();
        }
    }
    public static void delete(int id) {
        try (Connection con = DbUtils.getConnection()) {
            final String query = "DELETE FROM users WHERE userid = :userid";
            con.createQuery(query)
                    .addParameter("userid", id)
                    .executeUpdate();
        }
    }
}

