package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.User;
import com.example.googlenewsclone.services.UserService;
import com.example.googlenewsclone.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

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
                    ServletUtils.forward("/views/vwAdmin/vwAdminUser/index.jsp", request, response);
                    break;
                case "/Article":
                    ServletUtils.forward("/views/vwAdmin/vwAdminArticle/index.jsp", request, response);
                case "/Tag":
                    ServletUtils.forward("/views/vwAdmin/vwAdminTag/index.jsp", request, response);
                case "/Category":
                    ServletUtils.forward("/views/vwAdmin/vwAdminCategory/index.jsp", request, response);
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
}
