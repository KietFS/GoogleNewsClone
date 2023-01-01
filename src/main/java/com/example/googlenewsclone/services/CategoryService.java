package com.example.googlenewsclone.services;

import com.example.googlenewsclone.beans.Category;
import com.example.googlenewsclone.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class CategoryService {
    public static List<Category> findAll(){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from categories order by catid;";

            return con.createQuery(query)
                    .executeAndFetch(Category.class);
        }
    }
    public static Category findByID(int id){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "select * from categories where catID = :id;";

            return con.createQuery(query)
                    .addParameter("id", id)
                    .executeAndFetchFirst(Category.class);
        }
    }
    public static void delete(int id){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "DELETE FROM categories WHERE catid = :catid";

            con.createQuery(query)
                    .addParameter("catid", id)
                    .executeUpdate();
        }
    }
    public static void add(Category c){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "INSERT INTO categories (catname, pcatid) VALUES (:catname,:pcatid);";

            con.createQuery(query)
                    .addParameter("pcatid", c.getpCatID())
                    .addParameter("catname", c.getCatName())
                    .executeUpdate();
        }
    }
    public static void update(int catid, int pcatid, String catname){
        try (Connection con = DbUtils.getConnection()) {
            final String query = "UPDATE categories SET  catname = :catname, pcatid = :pcatid WHERE catid = :catid;";

            con.createQuery(query)
                    .addParameter("pcatid", pcatid)
                    .addParameter("catid", catid)
                    .addParameter("catname", catname)
                    .executeUpdate();
        }
    }
}
