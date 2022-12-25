package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.utils.ServletUtils;

import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import  javax.servlet.ServletException;


@WebServlet(name = "login", value = "/login")
public class Login extends HttpServlet {


    public void init() {
       String message = "Login Page";
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletUtils.forward("/login.jsp", request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        request.setAttribute("message", "Email hoặc mật khẩu không đúng");
        ServletUtils.forward("/login.jsp", request, response);
    }
}