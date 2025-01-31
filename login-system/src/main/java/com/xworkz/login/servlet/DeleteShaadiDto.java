package com.xworkz.login.servlet;

import com.xworkz.login.service.ShaadiService;
import com.xworkz.login.service.ShaadiServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/Delete")
public class DeleteShaadiDto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String ref= req.getParameter("id");

        ShaadiService shaadiService=new ShaadiServiceImpl();
        shaadiService.deleteShaadiDtoById(Integer.parseInt(ref));

        resp.sendRedirect(req.getContextPath()+"/getAllShaadiDto");
    }
}
