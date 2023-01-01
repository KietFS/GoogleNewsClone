package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.Article;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class ArticleService {
    public static List<Article> findAll(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from articles ORDER BY articleid;";
            List<Article> list = con.createQuery(query)
                    .executeAndFetch(Article.class);
            return list;
        }
    }
    public static List<Article> findArticlesbyRandom(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from articles where publish_date IS NOT NULL ORDER BY RANDOM() LIMIT 15;";
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
    public static Article findArticleByWritterID(int id){
        try(Connection con = DbUtils.getConnection()){
            final String query = "select * from articles where writterid = :writterid;";
            List<Article> list = con.createQuery(query)
                    .addParameter("writterid", id)
                    .executeAndFetch(Article.class);
            if(list.size() == 0){
                return null;
            }
            return list.get(0);
        }
    }
    public static void plusView(int id){
        try(Connection con = DbUtils.getConnection()){
            final String query = "update articles set views=views+1 where articleid = :articleid;";

            con.createQuery(query)
                    .addParameter("articleid", id)
                    .executeUpdate();
        }
    }
    public static List<Article> findByTag(int tagid){
        try(Connection con = DbUtils.getConnection()){
            final String query = "select tha.articleid, title, views, subcontent, content, catid, premium, writterid, statusid, publish_date, thumbs_img from articles inner join tags_has_articles tha on articles.articleid = tha.articleid where tha.tagid = :tagid and publish_date IS NOT NULL;";
            List<Article> list = con.createQuery(query)
                    .addParameter("tagid", tagid)
                    .executeAndFetch(Article.class);
            if(list.size() == 0){
                return null;
            }
            return list;
        }
    }
    public static void delete(int articleid){
        try(Connection con = DbUtils.getConnection()){
            final String query ="DELETE FROM articles WHERE articleid = :articleid;";
            con.createQuery(query)
                    .addParameter("articleid", articleid)
                    .executeUpdate();
        }
    }
    public static void updateStatus(Article a){
        try(Connection con = DbUtils.getConnection()){
            final String query ="UPDATE articles SET statusid = :statusid WHERE articleid = :articleid";
            con.createQuery(query)
                    .addParameter("articleid", a.getArticleID())
                    .addParameter("statusid", a.getStatusID())
                    .executeUpdate();
        }
    }
    public static void publishArticle(Article a){
        try(Connection con = DbUtils.getConnection()){
            final String query ="UPDATE articles SET statusid = :statusid, publish_date = :publish_date WHERE articleid = :articleid";
            con.createQuery(query)
                    .addParameter("articleid", a.getArticleID())
                    .addParameter("statusid", a.getStatusID())
                    .addParameter("publish_date", a.getPublish_date())
                    .executeUpdate();
        }
    }
}
