package controller;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import  javax.servlet.ServletException;


@WebServlet(name = "addArticle", value = "/addArticle")
public class AddArticle extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/writer/addArticle.jsp";

        String id = request.getParameter("id");
        String content = request.getParameter("content");
        request.setAttribute("id", id);
        request.setAttribute("content", content);
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/writer/addArticle.jsp";

        String id = request.getParameter("id");
        String content = request.getParameter("content");
        request.setAttribute("id", id);
        request.setAttribute("content", content);
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

}