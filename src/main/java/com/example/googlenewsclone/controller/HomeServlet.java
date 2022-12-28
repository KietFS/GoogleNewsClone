package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.Article;
import com.example.googlenewsclone.beans.Category;
import com.example.googlenewsclone.beans.ParentCategory;
import com.example.googlenewsclone.beans.User;
import com.example.googlenewsclone.services.ArticleService;
import com.example.googlenewsclone.services.CategoryService;
import com.example.googlenewsclone.services.ParentCategoryService;
import com.example.googlenewsclone.services.UserService;
import com.example.googlenewsclone.utils.ServletUtils;

import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import  javax.servlet.ServletException;


@WebServlet(name = "HomeServlet", value = "/Home/*")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }
        List<ParentCategory> parentList = ParentCategoryService.findAll();
        List<Category> catList = CategoryService.findAll();
        List<User> userList = UserService.findAll();
        List<Article> articleList = ArticleService.findAll();
        switch (path) {
            case "/Index":
                request.setAttribute("parentCategories", parentList);
                request.setAttribute("categories", catList);
                request.setAttribute("articles", articleList);
                ServletUtils.forward("/views/vwHome/index.jsp", request, response);
                break;
            case "/Article":
                int id = 0;
                try{
                    id = Integer.parseInt(request.getParameter("id"));
                }catch (NumberFormatException e){

                }
                Article a = ArticleService.findByID(id);
                if(a != null){
                    User user = UserService.findByID(a.getWritterID());
                    Category cat = CategoryService.findByID(a.getCatID());
                    request.setAttribute("article", a);
                    request.setAttribute("parentCategories", parentList);
                    request.setAttribute("category", cat);
                    request.setAttribute("user", user);
                    ServletUtils.forward("/views/vwHome/article.jsp", request, response);
                } else{
                    ServletUtils.redirect("/Home", request, response);
                }
                break;
            default:
                ServletUtils.forward("../../404.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            default:
                ServletUtils.forward("../../views/404.jsp", request, response);
                break;
        }
    }
}