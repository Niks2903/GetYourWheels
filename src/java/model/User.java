/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author universe
 */
public class User {
    int userId,otp;
    private String userName,address,password;
    private String email,phoneNo;
    private String carModel,carBrand,carNumber,date,time,type;
    public String getUserName() {
        return userName;
    }
    
    public String getPhoneNo() {
        return phoneNo;
    }
   
    public String getEmail() {
        return email;
    }
    public String getPassword() {
        return password;
    }
    public String getAddress() {
        return address;
    }
    
    public int getUserId() {
        return userId;
    }
    
    public void setUserId(int userId) {
        this.userId = userId;
    }
    
    public int getOtp() {
        return otp;
    }
    
    public void setOtp(int otp) {
        this.otp = otp;
    }
    
    public void setUser(String userName,String email,String phoneNo,String address, String password) {
        this.userName = userName;
        this.phoneNo = phoneNo;
        this.password = password;
        this.address = address;
        this.email = email;
    }
    
    public void setService(String carModel,String carBrand,String carNumber,String date, String time,String type,int userId,String email) 
    {
        this.carModel = carModel;
        this.carBrand = carBrand;
        this.carNumber = carNumber;
        this.date = date;
        this.time = time;
        this.type = type;
        this.userId = userId;
        this.email = email;
    }

    public String getModel() {
        return carModel;
    }
    
    public String getBrand() {
        return carBrand;
    }
   
    public String getNumber() {
        return carNumber;
    }
    public String getDate() {
        return date;
    }
    public String getTime() {
        return time;
    }
    public String getType() {
        return type;
    }
    
    


    

   
    
    
    
}
