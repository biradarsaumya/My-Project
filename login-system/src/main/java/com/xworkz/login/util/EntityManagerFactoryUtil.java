package com.xworkz.login.util;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EntityManagerFactoryUtil {

    private static EntityManagerFactory entityManagerFactory= null;

    public static EntityManagerFactory getFactory() {

        return entityManagerFactory;
    }


    static {
        entityManagerFactory=Persistence.createEntityManagerFactory("test");
    }

}
