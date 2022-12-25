package com.example.googlenewsclone.controller;

import com.example.googlenewsclone.utils.ServletUtils;

import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import  javax.servlet.ServletException;


@WebServlet(name = "register", value = "/register")
public class Register extends HttpServlet {


    public void init() {
        String value ="";
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletUtils.forward("/register.jsp", request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String role = request.getParameter("roles");

        request.setAttribute("message", email + ", " + name + ", " + password + ", " + role );
        ServletUtils.forward("/register.jsp", request, response);
    }

}