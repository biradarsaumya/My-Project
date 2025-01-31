package com.xworkz.login.service;

import com.xworkz.login.dao.ShaadiDao;
import com.xworkz.login.dao.ShaadiDaoImpl;
import com.xworkz.login.dto.ShaadiDto;

import java.util.Collections;
import java.util.List;

public class ShaadiServiceImpl implements ShaadiService {

    ShaadiDao dao = new ShaadiDaoImpl();

    @Override
    public boolean createAccount(ShaadiDto dto) {
        System.out.println("Service Method Started");
        boolean isAccountCreated = false;
        boolean isFirstNameCreated = false;
        //boolean isEmailCreated = false;
        if (dto != null) {
            if (dto.getFirstName() != null && !dto.getFirstName().isEmpty()) {
                isFirstNameCreated = true;
            }
           //if (dto.getEmail() != null && !dto.getEmail().isEmpty()) {
                //isEmailCreated = true;
            //}
            if (isFirstNameCreated /*&& isEmailCreated*/) {
                isAccountCreated =true;
            }
        }
        System.out.println("Service Method ended");
        dao.createAccount(dto);
        return isAccountCreated;
    }


   @Override
    public ShaadiDto getShaadiDtoById(int id) {
       System.out.println("Servic GEt started");
        ShaadiDto dto = null;
        if(id>0){
            dto=dao.getShaadiDtoById(id);
        }
       System.out.println("Servic Get ended");
        return dto;
    }

    @Override
    public ShaadiDto getShaadiDtoByEmail(String email) {
        System.out.println("Servic Get By Email Method Started");
        ShaadiDto dto = null;
        if(email!=null){
            dto=dao.getShaadiDtoByEmail(email);
        }
        System.out.println("Servic Get By Email Method Ended");
        return dto;
    }

    @Override
    public List<ShaadiDto> getAllShaadiDto() {
        List<ShaadiDto> dto = dao.getAllShaadiDto();
        return dto;
    }

    @Override
    public boolean updateShaadiDto(ShaadiDto dto) {
        System.out.println("Updated Service Started");
        boolean isShaadiDtoUpdated=false;
        if(dto!=null){
         isShaadiDtoUpdated= dao.updateShaadiDto(dto);
        }
        System.out.println("Updated Service Ended");
        return isShaadiDtoUpdated;
    }

    @Override
    public boolean deleteShaadiDtoById(int id) {
        boolean isShaadiDtoDeleted=false;
        if(id>0){
            isShaadiDtoDeleted=dao.deleteShaadiDtoById(id);
        }
        return isShaadiDtoDeleted;
    }
}
