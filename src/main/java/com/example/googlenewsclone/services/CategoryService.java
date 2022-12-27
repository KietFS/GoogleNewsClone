package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.Category;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class CategoryService {
    public static List<Category> findAll(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from categories;";

            return con.createQuery(query)
                    .executeAndFetch(Category.class);
        }
    }
}
