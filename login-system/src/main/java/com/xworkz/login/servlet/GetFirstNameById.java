package com.xworkz.login.servlet;

import com.xworkz.login.dto.ShaadiDto;
import com.xworkz.login.service.ShaadiService;
import com.xworkz.login.service.ShaadiServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/GetShaadiDetails")
public class GetFirstNameById extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         String id=   req.getParameter("id");

        ShaadiService shaadiService=new ShaadiServiceImpl();
        ShaadiDto shaadi =shaadiService.getShaadiDtoById(Integer.parseInt(id));
        req.setAttribute("key",shaadi);
        RequestDispatcher requestDispatcher=req.getRequestDispatcher("getfirstnamebyid.jsp");
        requestDispatcher.forward(req,resp);
    }
}
