package com.xworkz.login.dao;

import com.xworkz.login.dto.ShaadiDto;
import com.xworkz.login.util.EntityManagerFactoryUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import java.util.Collections;
import java.util.List;

public class ShaadiDaoImpl implements ShaadiDao{
    @Override
    public boolean createAccount(ShaadiDto dto) {
        System.out.println("dao Mwthod Started");
       EntityManagerFactory entityManagerFactory= EntityManagerFactoryUtil.getFactory();
       EntityManager entityManager=entityManagerFactory.createEntityManager();
       entityManager.getTransaction().begin();
       entityManager.persist(dto);
       entityManager.getTransaction().commit();
        System.out.println("dao Method ended");
        return true;
    }

    @Override
    public ShaadiDto getShaadiDtoById(int id) {
        System.out.println("Dao Get started");
        EntityManagerFactory entityManagerFactory= EntityManagerFactoryUtil.getFactory();
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
       ShaadiDto dto= entityManager.find(ShaadiDto.class,id);
        entityManager.getTransaction().commit();
        System.out.println("Dao Get ended");
        return dto;
    }

    @Override
    public ShaadiDto getShaadiDtoByEmail(String email) {
        System.out.println("Dao Get By Email started");
      EntityManagerFactory entityManagerFactory = EntityManagerFactoryUtil.getFactory();
      EntityManager entityManager = entityManagerFactory.createEntityManager();
      Query query = entityManager.createQuery("from ShaadiDto shaadiDto where shaadiDto.email=:ref");
      query.setParameter("ref",email);
      ShaadiDto shaadiDto = (ShaadiDto) query.getSingleResult();
        System.out.println("Dao Get By Email ended");
        return shaadiDto;
    }

    @Override
    public List<ShaadiDto> getAllShaadiDto() {
        EntityManagerFactory entityManagerFactory = EntityManagerFactoryUtil.getFactory();
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query=entityManager.createQuery("from ShaadiDto shaadiDto");
        List<ShaadiDto> shaadiDto= query.getResultList();

        return shaadiDto;

    }


    @Override
    public boolean updateShaadiDto(ShaadiDto dto) {
        System.out.println("Update Dao Started");
        EntityManagerFactory entityManagerFactory = EntityManagerFactoryUtil.getFactory();
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.merge(dto);
        entityManager.getTransaction().commit();
        System.out.println("Update Dao Ended");
        return true;
    }

    @Override
    public boolean deleteShaadiDtoById(int id) {
        EntityManagerFactory entityManagerFactory = EntityManagerFactoryUtil.getFactory();
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Query query=entityManager.createQuery("delete from ShaadiDto alias where alias.id=:ref");
        query.setParameter("ref",id);
        query.executeUpdate();
        entityManager.getTransaction().commit();
        return true;
    }
}
