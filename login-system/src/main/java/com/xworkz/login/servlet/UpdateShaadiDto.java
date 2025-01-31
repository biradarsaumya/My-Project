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
@WebServlet(urlPatterns = "/Update")
public class UpdateShaadiDto extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String ref=    req.getParameter("firstName");
        String ref1=   req.getParameter("lastName");
        String ref2=   req.getParameter("email");
        String ref3=   req.getParameter("phone");
        String ref4=   req.getParameter("dob");
        String ref5=   req.getParameter("age");
        String ref6=   req.getParameter("gender");
        String ref7=   req.getParameter("color");
        String ref8=   req.getParameter("height");
        String ref9=   req.getParameter("religion");
        String ref10=  req.getParameter("motherTongue");
        String ref11=  req.getParameter("state");
        String ref12=  req.getParameter("password");
        String ref13=  req.getParameter("confirmPassword");


        ShaadiDto dto = new ShaadiDto();
        dto.setId(Integer.parseInt(id));
        dto.setFirstName(ref);
        dto.setLastName(ref1);
        dto.setEmail(ref2);
        dto.setPhoneNumber(Long.parseLong(ref3));
        dto.setDob(ref4);
        dto.setAge(Integer.parseInt(ref5));
        dto.setGender(ref6);
        dto.setColor(ref7);
        dto.setHeight(ref8);
        dto.setReligion(ref9);
        dto.setMotherTongue(ref10);
        dto.setState(ref11);
        dto.setPassword(ref12);
        dto.setConfirmPassword(ref13);


        ShaadiService shaadiService=new ShaadiServiceImpl();
        shaadiService.updateShaadiDto(dto);

        RequestDispatcher requestDispatcher=req.getRequestDispatcher("updateresponse.jsp");
        requestDispatcher.forward(req,resp);

    }
}
