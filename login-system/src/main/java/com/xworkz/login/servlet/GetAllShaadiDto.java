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
import java.util.List;

@WebServlet(urlPatterns = "/getAllShaadiDto")
public class GetAllShaadiDto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShaadiService shaadiService=new ShaadiServiceImpl();
        List<ShaadiDto> dto =shaadiService.getAllShaadiDto();

        req.setAttribute("value",dto);

        RequestDispatcher requestDispatcher=req.getRequestDispatcher("getallshaadidto.jsp");
        requestDispatcher.forward(req,resp);

    }
}
