package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.*;
import com.example.googlenewsclone.services.ArticleService;
import com.example.googlenewsclone.services.CategoryService;
import com.example.googlenewsclone.services.TagHasArticleService;
import com.example.googlenewsclone.services.TagService;
import com.example.googlenewsclone.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
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
                    session = request.getSession();
                    if(!((boolean) session.getAttribute("auth"))){
                        ServletUtils.redirect("/Account/Login", request, response);
                    } else {
                        List<Category> listcategories = CategoryService.findAll();
                        List <Tag> listtags = TagService.findAll();
                        request.setAttribute("categories", listcategories);
                        request.setAttribute("tags", listtags);
                        request.setCharacterEncoding("UTF-8");
                        ServletUtils.forward("/views/vwWriter/add.jsp", request, response);
                    }
                    break;
                case "/Edit":
                    int id = 0;
                    try{
                        id = Integer.parseInt(request.getParameter("id"));
                    }catch (NumberFormatException e){

                    }
                    Article article = ArticleService.findByID(id);
                    List<Category> categories = CategoryService.findAll();
                    List <Tag_Has_Article> tag_has_articles = TagHasArticleService.findAll(id);
                    List <Integer> finalTagsHasArticle = new ArrayList<>();
                    tag_has_articles.forEach(tA -> finalTagsHasArticle.add(tA.getTagID()));

                    List <Tag> tags = TagService.findAll();
                    request.setAttribute("article", article);
                    request.setAttribute("categories", categories);
                    request.setAttribute("tags_has_articles", finalTagsHasArticle);
                    request.setAttribute("tags", tags);
                    request.setCharacterEncoding("UTF-8");
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
                editArticle(request, response);

                break;
            case "/Delete":
                deleteArticle(request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }
    private static void addArticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        String[] tags = request.getParameterValues("tags");

        String subcontent = request.getParameter("subcontent");
        String thumbs_img = request.getParameter("thumbs_img");
        String content = request.getParameter("content");
        int catid = Integer.parseInt(request.getParameter("catid"));
        int writerid = Integer.parseInt(request.getParameter("writerid"));
        ArticleService.add(title, subcontent, content, thumbs_img, catid, writerid);
        Article  excutedArticle = ArticleService.findLast();
        for(String id:tags){
            System.out.println("tag id" + Integer.parseInt(id));
            System.out.println("article id"+ excutedArticle.getArticleID());
            TagHasArticleService.add(Integer.parseInt(id), excutedArticle.getArticleID());
        }
        ServletUtils.redirect("/Staff/Writer/Index", request, response);
    }

    private static void editArticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String thumbs_img = request.getParameter("thumbs_img");
        String content = request.getParameter("content");
        String subcontent = request.getParameter("subcontent");
        Boolean premium = Boolean.valueOf(request.getParameter("premium"));
        ArticleService.update( Integer.parseInt(id), title, subcontent,  content, thumbs_img, premium);
        ServletUtils.redirect("/Staff/Writer/Index", request, response);
    }

    private static void deleteArticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        ArticleService.delete(Integer.parseInt(id));
        ServletUtils.redirect("/Staff/Writer/Index", request, response);
    }
}
