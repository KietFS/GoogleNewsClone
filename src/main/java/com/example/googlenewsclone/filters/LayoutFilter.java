package com.example.googlenewsclone.filters;

import com.example.googlenewsclone.beans.Category;
import com.example.googlenewsclone.beans.ParentCategory;
import com.example.googlenewsclone.services.CategoryService;
import com.example.googlenewsclone.services.ParentCategoryService;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebFilter(filterName = "LayoutFilter", value = "/*")
public class LayoutFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        //Tìm tất cả Parent Cat
        List<ParentCategory> parentList = ParentCategoryService.findAll();
        request.setAttribute("parentCategories", parentList);

        //Tìm tất cả Category
        List<Category> catList = CategoryService.findAll();
        request.setAttribute("categories", catList);

        chain.doFilter(request, response);
    }
}
