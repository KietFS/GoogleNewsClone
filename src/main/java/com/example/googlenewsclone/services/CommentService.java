package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.Comment;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class CommentService{
    public static List<Comment> findAllCommentinArticle(int articleid){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from comments where articleid = :articleid;";

            List<Comment> list = con.createQuery(query)
                    .addParameter("articleid", articleid)
                    .throwOnMappingFailure(false)
                    .executeAndFetch(Comment.class);
            if(list.size() == 0)
                return null;
            return list;
        }
    }
}

