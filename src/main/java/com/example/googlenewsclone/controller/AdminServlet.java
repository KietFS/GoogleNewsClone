package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.*;
import com.example.googlenewsclone.services.*;
import com.example.googlenewsclone.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminServlet", value = "/Staff/Admin/*")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("authUser");
        int perm = u.getRoleID();
        if(perm == 4){
            String path = request.getPathInfo();
            if(path == null || path.equals("/")){
                path = "/User";
            }
            switch (path){
                case "/User":
                    //Lay tat ca user
                    List<User> allUsers = UserService.findAll();
                    request.setAttribute("allUsers", allUsers);
                    ServletUtils.forward("/views/vwAdmin/vwAdminUser/index.jsp", request, response);
                    break;
                case "/Article":
                    List<Article> allArticles = ArticleService.findAll();
                    request.setAttribute("allArticles", allArticles );
                    ServletUtils.forward("/views/vwAdmin/vwAdminArticle/index.jsp", request, response);
                    break;
                case "/Tag":
                    List<Tag> allTags = TagService.findAll();
                    request.setAttribute("allTags", allTags);
                    ServletUtils.forward("/views/vwAdmin/vwAdminTag/index.jsp", request, response);
                    break;
                case "/Category":
                    List <Category> allCategories = CategoryService.findAll();
                    List <ParentCategory> allParentCategories = ParentCategoryService.findAll();
                    request.setAttribute("allParentCategories", allParentCategories);
                    request.setAttribute("allCategories", allCategories);
                    ServletUtils.forward("/views/vwAdmin/vwAdminCategory/index.jsp", request, response);
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
        if(perm == 4){
            String path = request.getPathInfo();
            switch (path) {
                case "/ChangeUserRole":
                    changeRole(request, response);
                    break;
                case "/DeleteUser":
                    deleteUser(request, response);
                    break;
                case "/ChangeArticleStatus":
                    changeArticleStatus(request, response);
                    break;
                case "/DeleteArticle":
                    deleteArticle(request, response);
                    break;
                case "/AddTag":
                    addTag(request, response);
                    break;
                case "/UpdateTag":
                    updateTag(request, response);
                    break;
                case "/DeleteTag":
                    deleteTag(request, response);
                    break;
                case "/AddCategory":
                    addCategory(request, response);
                    break;
                case "/EditCategory":
                    editCategory(request, response);
                    break;
                case "/DeleteCategory":
                    deleteCategory(request, response);
                    break;
                default:
                    ServletUtils.forward("/views/404.jsp", request, response);
                    break;
            }
        } else {
            ServletUtils.redirect("/Home", request, response);
        }
    }
    private static void changeRole(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userid = Integer.parseInt(request.getParameter("userid"));
        int roleid = Integer.parseInt(request.getParameter("roleid"));

        User u = new User(userid, roleid);
        UserService.updateRole(u);

        ServletUtils.redirect("/Staff/Admin/User", request, response);
    }
    private static void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userid = Integer.parseInt(request.getParameter("userid"));

        UserService.delete(userid);

        ServletUtils.redirect("/Staff/Admin/User", request, response);
    }
    private static void changeArticleStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int articleid = Integer.parseInt(request.getParameter("articleid"));
        int statusid = Integer.parseInt(request.getParameter("statusid"));

        Article a = new Article(articleid, statusid);
        ArticleService.updateStatus(a);

        ServletUtils.redirect("/Staff/Admin/Article", request, response);
    }
    private static void deleteArticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int articleid = Integer.parseInt(request.getParameter("articleid"));

        ArticleService.delete(articleid);

        ServletUtils.redirect("/Staff/Admin/Article", request, response);
    }

    private static void addTag(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tagname = request.getParameter("tagname");
        TagService.add(tagname);
        ServletUtils.redirect("/Staff/Admin/Tag", request, response);
    }

    private static void updateTag(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tagname = request.getParameter("tagname");
        int tagid = Integer.parseInt(request.getParameter("tagid"));
        TagService.update(tagname, tagid);
        ServletUtils.redirect("/Staff/Admin/Tag", request, response);
    }

    private static void deleteTag(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int tagid = Integer.parseInt(request.getParameter("tagid"));
        TagService.delete(tagid);
        ServletUtils.redirect("/Staff/Admin/Tag", request, response);
    }
    private static void addCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pcatid = Integer.parseInt(request.getParameter("pcatid"));
        String catname = request.getParameter("catname");

        Category c = new Category(catname, pcatid);
        CategoryService.add(c);

        ServletUtils.redirect("/Staff/Admin/Category", request, response);
    }
    private static void editCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int catid = Integer.parseInt(request.getParameter("catid"));
        int pcatid = Integer.parseInt(request.getParameter("pcatid"));
        String catname = request.getParameter("catname");

        CategoryService.update(catid, pcatid, catname);

        ServletUtils.redirect("/Staff/Admin/Category", request, response);
    }
    private static void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int catid = Integer.parseInt(request.getParameter("catid"));

        CategoryService.delete(catid);

        ServletUtils.redirect("/Staff/Admin/Category", request, response);
    }
}
