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
}
