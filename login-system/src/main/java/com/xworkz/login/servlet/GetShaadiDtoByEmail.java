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

@WebServlet(urlPatterns = "/GetEmail")
public class GetShaadiDtoByEmail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String ref= req.getParameter("email");

        ShaadiService shaadiService=new ShaadiServiceImpl();
        ShaadiDto dto =shaadiService.getShaadiDtoByEmail(ref);

        req.setAttribute("key",dto);

        RequestDispatcher requestDispatcher=req.getRequestDispatcher("getshaadidtobyemail.jsp");
        requestDispatcher.forward(req,resp);


    }
}
