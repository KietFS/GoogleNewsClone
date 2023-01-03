package com.example.googlenewsclone.utils;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

public class DbUtils {
//    static Sql2o sql2o = new Sql2o("jdbc:postgresql://ec2-3-229-161-70.compute-1.amazonaws.com:5432/d86g9mu73tide7", "egbqpnqduyccoq", "5b41e3322cff11022533495d4dc6fc526a885b23644014299b28f6fd407e0d64");
    static Sql2o sql2o = new Sql2o("jdbc:postgresql://localhost:5432/newspaper", "huynhngoctuankiet", "password");

    public static Connection getConnection(){
        return sql2o.open();
    }
}

