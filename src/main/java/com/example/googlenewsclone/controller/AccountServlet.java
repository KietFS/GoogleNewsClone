package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.beans.User;
import com.example.googlenewsclone.services.UserService;
import com.example.googlenewsclone.utils.ServletUtils;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;

@WebServlet(name = "AccountServlet", value = "/Account/*")
public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if(path == null || path.equals("/")){
            path = "/Index";
        }
        switch (path){
            case "/Login":
                ServletUtils.forward("/views/vwAccount/login.jsp", request, response);
                break;
            case "/Register":
                ServletUtils.forward("/views/vwAccount/register.jsp", request, response);
                break;
            case "/Profile":
                ServletUtils.forward("/views/vwAccount/profile.jsp", request, response);
                break;
            case "/IsAvailable":
                String user = request.getParameter("user");
                User u = UserService.findByUsername(user);
                boolean isAvaiable = (user == null);

                PrintWriter out = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("utf-8");

                out.print(isAvaiable);
                out.flush();
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
            case "/Login":
                loginUser(request, response);
                break;
            case "/Register":
                registerUser(request, response);
            default:
                ServletUtils.forward("../../views/404.jsp", request, response);
                break;
        }
    }
    private static void registerUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String password = BCrypt.hashpw(request.getParameter("password"), BCrypt.gensalt());
        String username = request.getParameter("username");
        int role = Integer.parseInt(request.getParameter("roles"));
        LocalDateTime issue_at = LocalDateTime.now();
        int expiration = 10080; // 7 days

        User u = new User(username, password, name, issue_at, expiration, role, email);
        UserService.add(u);
        ServletUtils.forward("/views/vwAccount/register.jsp", request, response);
    }

    private static void loginUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        request.setAttribute("message", "Email hoặc mật khẩu không đúng");
        ServletUtils.forward("/views/vwHome/login.jsp", request, response);
    }
}
