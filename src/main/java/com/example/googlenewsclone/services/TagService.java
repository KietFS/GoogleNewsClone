package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.Tag;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class TagService {
    public static List<Tag> findAll(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select  * from tags order by tagid;";

            return con.createQuery(query)
                    .executeAndFetch(Tag.class);
        }
    }
    public static List<Tag> findByArticle(int articleid){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select tha.tagid, tagname from tags inner join tags_has_articles tha on tags.tagid = tha.tagid where articleid = :articleid";

            return con.createQuery(query)
                    .addParameter("articleid", articleid)
                    .executeAndFetch(Tag.class);
        }
    }
    public static Tag findByID(int tagid){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from tags where tagid = :tagid;";

            return con.createQuery(query)
                    .addParameter("tagid", tagid)
                    .executeAndFetchFirst(Tag.class);
        }
    }

    public static void add (String tagname){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "INSERT INTO tags(tagname) VALUES (:tagname);";

             con.createQuery(query)
                    .addParameter("tagname", tagname)
                    .executeUpdate();
        }
    }

    public static void update (String tagname, int tagid){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "UPDATE tags SET tagname = :tagname where tagid = :tagid ";

            con.createQuery(query)
                    .addParameter("tagname", tagname)
                    .addParameter("tagid", tagid)
                    .executeUpdate();
        }
    }

    public static void delete (int tagid){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "DELETE from tags WHERE tagid = :tagid ";

            con.createQuery(query)
                    .addParameter("tagid", tagid)
                    .executeUpdate();
        }
    }
}
