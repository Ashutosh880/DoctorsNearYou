package com.entities;

public class Patient {

    private String name;
    private String number;
    private String email;
    private String address;
    private String password;
    private String type;
    private String specialist;

    

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
