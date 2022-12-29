package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.Article;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class ArticleService {
    public static List<Article> findAll(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from articles;";
            List<Article> list = con.createQuery(query)
                    .executeAndFetch(Article.class);
            return list;
        }
    }
    public static Article findByID(int id){
        try(Connection con = DbUtils.getConnection()){
            final String query = "select * from articles where articleID = :articleid;";
            List<Article> list = con.createQuery(query)
                    .addParameter("articleid", id)
                    .executeAndFetch(Article.class);
            if(list.size() == 0){
                return null;
            }
            return list.get(0);
        }
    }
    public static List<Article> findByCatID(int id){
        try(Connection con = DbUtils.getConnection()){
            final String query = "select * from articles where catid = :id;";
            List<Article> list = con.createQuery(query)
                    .addParameter("id", id)
                    .executeAndFetch(Article.class);
            if(list.size() == 0){
                return null;
            }
            return list;
        }
    }
    public static List<Article> sortbyView(){
        try(Connection con = DbUtils.getConnection()){
            final String query = "select * from articles ORDER BY views DESC LIMIT 9;";
            List<Article> list = con.createQuery(query)
                    .executeAndFetch(Article.class);
            if(list.size() == 0){
                return null;
            }
            return list;
        }
    }
    public static List<Article> sortByDate(){
        try(Connection con = DbUtils.getConnection()){
            final String query = "select * from articles where publish_date IS NOT NULL ORDER BY publish_date DESC LIMIT 9;";
            List<Article> list = con.createQuery(query)
                    .executeAndFetch(Article.class);
            if(list.size() == 0){
                return null;
            }
            return list;
        }
    }
}
