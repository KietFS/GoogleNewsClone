package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.*;
import com.example.googlenewsclone.services.*;
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
        List<Article> articleList = ArticleService.findAll();
        switch (path) {
            case "/Index":
                request.setAttribute("parentCategories", parentList);           //Cho header
                request.setAttribute("categories", catList);                    //Cho header
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
                    List<Tag> tagList = TagService.findByArticle(a.getArticleID());
                    List<Article> revArticles = ArticleService.findByCatID(a.getCatID());
                    List<Comment> comList = CommentService.findAllCommentinArticle(a.getArticleID());
                    List<User> userComList = UserService.findAllUsernameCommentinArticle(a.getArticleID());
                    request.setAttribute("article", a);
                    request.setAttribute("parentCategories", parentList);           //Cho header
                    request.setAttribute("categories", catList);                    //Cho header
                    request.setAttribute("tags", tagList);
                    request.setAttribute("category", cat);
                    request.setAttribute("user", user);
                    request.setAttribute("revelantArticles", revArticles);
                    request.setAttribute("comments", comList);
                    request.setAttribute("userComts", userComList);
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