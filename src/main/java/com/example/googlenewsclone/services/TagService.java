package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.Tag;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class TagService {
    public static List<Tag> findAll(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from tags;";

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
}
