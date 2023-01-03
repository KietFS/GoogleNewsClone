package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.Tag;
import com.example.googlenewsclone.beans.Tag_Has_Article;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class TagHasArticleService {
    public static List<Tag_Has_Article> findAll(int id){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from tags_has_articles  where articleid = :articleid order by tagid;";

            return con.createQuery(query)
                    .addParameter("articleid", id)
                    .executeAndFetch(Tag_Has_Article.class);
        }
    }
}
