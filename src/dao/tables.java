/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import javax.swing.JOptionPane;

/**
 *
 * @author kaazif
 */
public class tables {
    public static void main(String[] args) {
        try {
            String userTables = "Create table user(id int AUTO_INCREMENT primary key,name varchar(200),email varchar(200),mobileNumber varchar(10), Address varchar(200),password varchar(200), securityQuestion varchar(200),answer varchar(200),status varchar(20),UNIQUE (email))";
            String adminDetails = "insert into user(name,email,mobileNumber,address,password,securityQuestion,answer,status) values('Admin','admin@gmail.com','1234567890','Srilanka','admin','what Primary School did you attend?','ABC','true')";
            String categoryTable = "create table category(id int AUTO_INCREMENT primary key,name varchar(200))";
            String productTable = "create table product(id int AUTO_INCREMENT primary key,name varchar(200),category varchar(200),price varchar(200))";
            String billTable = "create table bill(id int primary key,name varchar(200),mobileNumber varchar(200),email varchar(200),date varchar(50),total varchar(200),createdBy varchar(200))";
            DbOperations.setDataorDelete(userTables, "User Table Created Successfully");
            DbOperations.setDataorDelete(adminDetails, "Admin Details Added Successfully");
            DbOperations.setDataorDelete(categoryTable, "Category Table Created Successfully");
            DbOperations.setDataorDelete(productTable, "Product Table Created Successfully");
            DbOperations.setDataorDelete(billTable, "Bill Table Created Successfully");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
    
}
