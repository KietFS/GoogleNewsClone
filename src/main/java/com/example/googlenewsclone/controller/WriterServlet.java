package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.Article;
import com.example.googlenewsclone.beans.User;
import com.example.googlenewsclone.services.ArticleService;
import com.example.googlenewsclone.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "WriterServlet", value = "/Staff/Writer/*")
public class WriterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("authUser");
        int perm = u.getRoleID();
        if (perm == 2) {
            String path = request.getPathInfo();
            if(path == null || path.equals("/")) {
                path = "/Index";
            }
            switch (path){
                case "/Index":
                    List<Article> writerArticle = ArticleService.findArticlesByWriterID(u.getUserID());
                    request.setAttribute("articles", writerArticle);

                    ServletUtils.forward("/views/vwWriter/index.jsp", request, response);
                    break;
                case "/Add":
                    ServletUtils.forward("/views/vwWriter/add.jsp", request, response);
                    break;
                case "/Edit":
                    ServletUtils.forward("/views/vwWriter/edit.jsp", request, response);
                    break;
                default:
                    ServletUtils.forward("/views/404.jsp", request, response);
                    break;
            }
        } else ServletUtils.redirect("/Home", request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Add":
                addArticle(request, response);
                break;
            case "/Edit":
//                editArticle(request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }
    private static void addArticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String content = request.getParameter("content");
        request.setAttribute("id", id);
        request.setAttribute("content", content);

        ServletUtils.forward("/views/vwWriter/add.jsp", request, response);
    }
}
