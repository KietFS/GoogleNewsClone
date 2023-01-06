package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.Article;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class ArticleService {
    public static List<Article> findAll(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from articles ORDER BY articleid;";
            List<Article> list = con.createQuery(query)
                    .executeAndFetch(Article.class);
            return list;
        }
    }
    public static List<Article> ftxSearch(String search){
        try (Connection con = DbUtils.getConnection()) {
            List<Article> result = new ArrayList<>();
            String[] keywords = search.split(" ");
            List<Integer> articleidList = new ArrayList<>();
            for(String kw : keywords){
                String finalKw = "%"+kw+"%";
                //Sql2o
//                final String query = "select * from articles where to_tsvector(title, subcontent, content) @@ to_tsquery(:keyword);";
//                final String query = "select * from articles where publish_date IS NOT NULL AND (articles.title ilike :keyword or articles.subcontent or ilike :keyword or articles.content ilike :keyword);";

                //PreparedStatement
                final String query = "select * from articles where publish_date is not null and (articles.title ilike ? or articles.subcontent ilike ? or articles.content ilike ?);";
                PreparedStatement pstmt = con.getJdbcConnection().prepareStatement(query);
                pstmt.setString(1,finalKw);
                pstmt.setString(2,finalKw);
                pstmt.setString(3,finalKw);

                //Sql2o
//                List<Article> list = con.createQuery(query)
//                        .addParameter("keyword", finalKw)
//                        .executeAndFetch(Article.class);

                //PreparedStatement
                ResultSet rs = pstmt.executeQuery();

                while(rs.next()){
                    int articleid = rs.getInt("articleid");
                    String title = rs.getString("title");
                    String subcontent = rs.getString("subcontent");
                    int catid = rs.getInt("catid");
                    boolean premium = rs.getBoolean("premium");
                    Date publish_date = rs.getDate("publish_date");
                    String thumbs_img = rs.getString("thumbs_img");

                    Article a = new Article(articleid, title, subcontent, catid, premium, publish_date, thumbs_img);
                    if(!(articleidList.contains(a.getArticleID()))){
                        articleidList.add(a.getArticleID());
                        result.add(a);
                    }
                }
            }
            return result;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static List<Article> findArticlesByWriterID(int id){
        try(Connection con = DbUtils.getConnection()){
            final String query = "select * from articles where writterid = :writterid;";
            List<Article> list = con.createQuery(query)
                    .addParameter("writterid", id)
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
    public static Article findLast(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from articles ORDER BY articleid;";
            List<Article> list = con.createQuery(query)
                    .executeAndFetch(Article.class);
            return list.get(list.size() -1 );
        }
    }
    public static List<Article> findByCatID(int id){
        try(Connection con = DbUtils.getConnection()){
            final String query = "select * from articles where catid = :id and publish_date is not null;";
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

    public static Article findArticleByTitleAndWritterID(int id, String title){
        try(Connection con = DbUtils.getConnection()){
            final String query = "select * from articles where writterid = :writterid and title = :title;";
            List<Article> list = con.createQuery(query)
                    .addParameter("writterid", id)
                    .addParameter("title", title)
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

    public static void update(int articleid, String title, String subcontent,  String content, String thumbs_img){
        try(Connection con = DbUtils.getConnection()){
            final String query ="UPDATE articles SET title = :title, content = :content, subcontent = :subcontent, thumbs_img = :thumbs_img WHERE articleid = :id;";
            con.createQuery(query)
                    .addParameter("id", articleid)
                    .addParameter("title", title)
                    .addParameter("content", content)
                    .addParameter("thumbs_img", thumbs_img)
                    .addParameter("subcontent", subcontent)
                    .executeUpdate();
        }
    }

    public static void add(String title, String subcontent,  String content, String thumbs_img, int catid, int writterid ){
        try(Connection con = DbUtils.getConnection()){
            final String query ="INSERT INTO articles(title, views, subcontent, content, catid, premium, writterid, statusid, publish_date, thumbs_img) VALUES (:title, 0, :subcontent, :content, :catid, false, :writterid, 1, '2023-1-4',:thumbs_img  )";
            con.createQuery(query)
                    .addParameter("title", title)
                    .addParameter("content", content)
                    .addParameter("thumbs_img", thumbs_img)
                    .addParameter("subcontent", subcontent)
                    .addParameter("catid", catid)
                    .addParameter("writterid", writterid)
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
