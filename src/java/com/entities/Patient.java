package com.entities;

public class Patient {

    private String name;
    private String number;
    private String email;
    private String address;
    private String password;
    private String type;
    private String specialist;
    private String hname;
    private String blood_group;
    private String blood_pressure;
    private String city;

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getBlood_pressure() {
        return blood_pressure;
    }

    public void setBlood_pressure(String blood_pressure) {
        this.blood_pressure = blood_pressure;
    }

    public Patient(String name, String number, String email, String address, String password, String type, String specialist, String hname, String blood_group, String blood_pressure) {
        this.name = name;
        this.number = number;
        this.email = email;
        this.address = address;
        this.password = password;
        this.type = type;
        this.specialist = specialist;
        this.hname = hname;
        this.blood_group = blood_group;
        this.blood_pressure = blood_pressure;
    }

    public String getBlood_group() {
        return blood_group;
    }

    public void setBlood_group(String blood_group) {
        this.blood_group = blood_group;
    }

    public Patient(String name, String number, String email, String address, String password, String type, String specialist, String hname, String blood_group) {
        this.name = name;
        this.number = number;
        this.email = email;
        this.address = address;
        this.password = password;
        this.type = type;
        this.specialist = specialist;
        this.hname = hname;
        this.blood_group = blood_group;
    }
    
    
    
    
    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public Patient(String name, String number, String email, String address, String password, String type, String specialist, String hname) {
        this.name = name;
        this.number = number;
        this.email = email;
        this.address = address;
        this.password = password;
        this.type = type;
        this.specialist = specialist;
        this.hname = hname;
    }
    

    public Patient(String name, String number, String email, String address, String password, String type, String specialist) {
        this.name = name;
        this.number = number;
        this.email = email;
        this.address = address;
        this.password = password;
        this.type = type;
        this.specialist = specialist;
    }

    public Patient(String name, String number, String email, String address, String password, String type) {
        this.name = name;
        this.number = number;
        this.email = email;
        this.address = address;
        this.password = password;
        this.type = type;
    }

    public Patient() {
    }

//    getter and setter
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

   
public String getSpecialist() {
        return specialist;
    }

    public void setSpecialist(String specialist) {
        this.specialist = specialist;
    }
}
