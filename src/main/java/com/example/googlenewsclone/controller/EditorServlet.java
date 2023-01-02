package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.*;
import com.example.googlenewsclone.services.*;
import com.example.googlenewsclone.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name = "EditorServlet", value = "/Staff/Editor/*")
public class EditorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("authUser");
        int perm = u.getRoleID();
        if (perm == 3) {
            String path = request.getPathInfo();
            if (path == null || path.equals("/")) {
                path = "/Index";
            }
            switch (path) {
                case "/Index":
                    List<Article> allArticles = ArticleService.findAll();
                    request.setAttribute("allArticles", allArticles);
                    ServletUtils.forward("/views/vwEditor/index.jsp", request, response);
                    break;
                default:
                    ServletUtils.forward("/views/404.jsp", request, response);
                    break;
            }
        } else {
            ServletUtils.redirect("/Home", request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("authUser");
        int perm = u.getRoleID();
        if (perm == 3) {
            String path = request.getPathInfo();
            switch (path) {
                case "/UpdateStatus":
                    updateStatus(request, response);
                    break;
                default:
                    ServletUtils.forward("/views/404.jsp", request, response);
                    break;
            }
        } else{
            ServletUtils.redirect("/Home", request, response);
        }
    }
    private static void updateStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int articleid = Integer.parseInt(request.getParameter("articleid"));
        int statusid = Integer.parseInt(request.getParameter("statusid"));

        if(statusid == 4){
            Date publish_date = Date.valueOf(LocalDate.now());
            Article a = new Article(articleid, statusid, publish_date);
            ArticleService.publishArticle(a);
        } else{
            Article a = new Article(articleid, statusid);
            ArticleService.updateStatus(a);
        }

        ServletUtils.redirect("/Staff/Editor/Index", request, response);
    }
}