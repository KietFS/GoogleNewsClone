package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.Article;
import com.example.googlenewsclone.beans.Category;
import com.example.googlenewsclone.services.ArticleService;
import com.example.googlenewsclone.services.CategoryService;
import com.example.googlenewsclone.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DefaultServlet", value = "/")
public class DefaultServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            ServletUtils.redirect("/Home", request, response);
        } else
                ServletUtils.forward("views/404.jsp", request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletUtils.forward("views/404.jsp", request, response);
    }
}
