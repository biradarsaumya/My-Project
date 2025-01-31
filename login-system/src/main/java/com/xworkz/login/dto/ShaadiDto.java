package com.xworkz.login.dto;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Table(name="shaadidetails")
public class ShaadiDto {

    @Id
    @GenericGenerator(name="ref",strategy = "increment")
    @GeneratedValue(generator = "ref")
    @Column(name="id")
    private int id;
    @Column(name="firstName")
    private String firstName;
    @Column(name="lastName")
    private String lastName;
    @Column(name="email")
    private String email;
    @Column(name="phoneNumber")
    private long phoneNumber;
    @Column(name="dob")
    private String dob;
    @Column(name="age")
    private int age;
    @Column(name="gender")
    private String gender;
    @Column(name="color")
    private String color;
    @Column(name="height")
    private String height;
    @Column(name="religion")
    private String religion;
    @Column(name="motherTongue")
    private String motherTongue;
    @Column(name="state")
    private String state;
    @Column(name="password")
    private String password;
    @Column(name="confirmPassword")
    private String confirmPassword;



}
