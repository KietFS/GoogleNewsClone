package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.ParentCategory;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class ParentCategoryService {
    public static List<ParentCategory> findAll(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from parent_categories;";

            return con.createQuery(query)
                    .executeAndFetch(ParentCategory.class);
        }
    }
}
