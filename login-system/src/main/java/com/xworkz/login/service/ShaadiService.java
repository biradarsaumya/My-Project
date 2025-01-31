package com.xworkz.login.service;

import com.xworkz.login.dto.ShaadiDto;

import java.util.List;

public interface ShaadiService {


    boolean createAccount(ShaadiDto dto);
    ShaadiDto getShaadiDtoById(int id);
    ShaadiDto getShaadiDtoByEmail(String email);
    List<ShaadiDto> getAllShaadiDto();
    boolean updateShaadiDto(ShaadiDto dto);
    boolean deleteShaadiDtoById(int id);




}
