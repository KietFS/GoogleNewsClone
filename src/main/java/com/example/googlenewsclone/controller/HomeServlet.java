package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.*;
import com.example.googlenewsclone.services.*;
import com.example.googlenewsclone.utils.ServletUtils;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import javax.servlet.ServletException;


@WebServlet(name = "HomeServlet", value = "/Home/*")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }
        switch (path) {
            case "/Index":

                //Tìm top 9 bài viết có nhiều lượt views cao nhất
                List<Article> topViews = ArticleService.sortbyView();
                request.setAttribute("topArticles", topViews);

                //Tìm 9 bài viết xuất bản mới nhất
                List<Article> newestDate = ArticleService.sortByDate();
                request.setAttribute("newestArticles", newestDate);

                //Tìm 15 bài viết ngẫu nhiên toàn mục
                List<Article> random = ArticleService.findArticlesbyRandom();
                request.setAttribute("randomArticles", random);

                ServletUtils.forward("/views/vwHome/index.jsp", request, response);
                break;
            case "/Article":
                int id = 0;
                try{
                    id = Integer.parseInt(request.getParameter("id"));
                }catch (NumberFormatException e){

                }
                //Truy xuất thông tin chi tiết của bài báo
                Article a = ArticleService.findByID(id);
                if(a != null){
                    //Tìm tác giả viết bài theo Writter ID
                    User user = UserService.findByID(a.getWritterID());
                    request.setAttribute("user", user);

                    //Tìm chuyên mục của bài viết
                    Category cat = CategoryService.findByID(a.getCatID());
                    request.setAttribute("category", cat);

                    //Tìm các tag của bài viết đó
                    List<Tag> tagList = TagService.findByArticle(a.getArticleID());
                    request.setAttribute("tags", tagList);

                    //Truy xuất các bài liên quan (cùng chuyên mục)
                    List<Article> revArticles = ArticleService.findByCatID(a.getCatID());
                    request.setAttribute("revelantArticles", revArticles);

                    //Tìm các comment có trong bài báo đó
                    List<Comment> comList = CommentService.findAllCommentinArticle(a.getArticleID());
                    request.setAttribute("comments", comList);

                    //Tìm username của các comment
                    List<User> userComList = UserService.findAllUsernameCommentinArticle(a.getArticleID());
                    request.setAttribute("userComts", userComList);

                    //Truy xuất thông tin các comment trong bài viết
                    request.setAttribute("article", a);
                    ServletUtils.forward("/views/vwHome/article.jsp", request, response);
                } else{
                    ServletUtils.redirect("/Home", request, response);
                }
                break;
            case "/Category":
                int catID = 0;
                try{
                    catID = Integer.parseInt(request.getParameter("id"));
                }catch (NumberFormatException e){

                }
                List<Article> articleByCat = ArticleService.findByCatID(catID);
                request.setAttribute("articlesByCat", articleByCat);
                ServletUtils.forward("/views/vwHome/byCat.jsp", request, response);
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
            case "/AddComment":
                addComment(request, response);
                break;
            default:
                ServletUtils.forward("../../views/404.jsp", request, response);
                break;
        }
    }
    private static void addComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String content = request.getParameter("content");
        Date date = Date.valueOf(LocalDate.now());
        int userid = Integer.parseInt(request.getParameter("userid"));
        int articleid = Integer.parseInt(request.getParameter("articleid"));
        Comment c = new Comment(content, date, userid, articleid);
        CommentService.add(c);

        ServletUtils.redirect("/Home/Article?id=" + request.getParameter("articleid"), request, response);
    }
}