package controller;

import java.io.*;
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

        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        request.setAttribute("message", "Đăng ký không thành công");
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

}