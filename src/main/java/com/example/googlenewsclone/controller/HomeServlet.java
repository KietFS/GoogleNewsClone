package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.*;
import com.example.googlenewsclone.services.*;
import com.example.googlenewsclone.utils.ServletUtils;
import net.bytebuddy.utility.RandomString;
import org.mindrot.jbcrypt.BCrypt;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;
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
                //Tìm tất cả chuyên mục
                List<Category> categories = CategoryService.findAll();
                request.setAttribute("categories", categories);

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
                //Truy xuất thông tin người dùng session
                HttpSession session = request.getSession();
                User u = (User) session.getAttribute("authUser");

                //Truy xuất thông tin chi tiết của bài báo
                Article a = ArticleService.findByID(id);
                if(a.getStatusID() == 4){
                    if(a.isPremium()){
                        if((boolean) session.getAttribute("auth")){
                            //Cộng 1 view cho bài viết
                            ArticleService.plusView(a.getArticleID());

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
                            request.setAttribute("errPremium", "Bạn cần tài khoản premium để có thể đọc bài báo này");
                            ServletUtils.forward("/Home/", request, response);
                        }
                    } else{
                        //Cộng 1 view cho bài viết
                        ArticleService.plusView(a.getArticleID());

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

                        request.setAttribute("article", a);
                        ServletUtils.forward("/views/vwHome/article.jsp", request, response);
                    }
                } else {
                    if(u.getRoleID() == 3 || u.getRoleID() == 4){               //Editor & Administrator được xem tất cả bài viết ở tất cả trạng thái
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

                        request.setAttribute("article", a);
                        ServletUtils.forward("/views/vwHome/article.jsp", request, response);
                    } else if(u.getRoleID() == 2 && a.getWritterID() == u.getUserID()){                           //Writer được xem tất cả bài viết của mình ở tất cả trạng thái
                        request.setAttribute("user", u);
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

                        request.setAttribute("article", a);
                        ServletUtils.forward("/views/vwHome/article.jsp", request, response);
                    } else ServletUtils.redirect("/Home", request, response);
                }

                break;
            case "/Category":
                int catID = 0;
                try{
                    catID = Integer.parseInt(request.getParameter("id"));
                }catch (NumberFormatException e){

                }
                Category cat = CategoryService.findByID(catID);
                List<Article> articleByCat = ArticleService.findByCatID(catID);
                if(articleByCat == null){
                    request.setAttribute("errEmpty", true);
                    request.setAttribute("msgEmpty", "Không có dữ liệu");
                }
                request.setAttribute("articlesByCat", articleByCat);
                request.setAttribute("Category", cat);
                ServletUtils.forward("/views/vwHome/byCat.jsp", request, response);
                break;
            case "/Tag":
                int tagID = 0;
                try{
                    tagID = Integer.parseInt(request.getParameter("id"));
                }catch (NumberFormatException e){

                }
                Tag tag = TagService.findByID(tagID);
                List<Article> articleByTag = ArticleService.findByTag(tagID);
                request.setAttribute("articlesByTag", articleByTag);
                request.setAttribute("Tag", tag);
                ServletUtils.forward("/views/vwHome/byTag.jsp", request, response);
                break;
            case "/Search":
                ftxSearch(request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
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
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    private static void addComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String content = request.getParameter("content");
        Date date = Date.valueOf(LocalDate.now());
        int userid = Integer.parseInt(request.getParameter("userid"));
        int articleid = Integer.parseInt(request.getParameter("articleid"));
        Comment c = new Comment(content, date, userid, articleid);
        CommentService.add(c);

        ServletUtils.redirect("/Home/Article?id=" + request.getParameter("articleid"), request, response);
    }
    private static void ftxSearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String keywords = request.getParameter("ftxsearch");
        List<Article> articleslist = ArticleService.ftxSearch(keywords);
        request.setAttribute("keywords", keywords);
        request.setAttribute("ftxSearchArticles", articleslist);

        List<Category> catList = CategoryService.findAll();
        request.setAttribute("categories", catList);

        ServletUtils.forward("/views/vwHome/bySearch.jsp", request, response);
    }
}