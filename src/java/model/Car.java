/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ANIKET
 */
public class Car {
    
    private int carId,cusId,shopId,modelId,seatingCapacity;
    private double price,milege,noOfYears,km,priceOld;
    private String brand,color,fuelType,vehicleType,modelName,shopName,shopContact,shopAddress,image,customerName,phoneNo;
    
    public int getCarId() {
        return carId;
    }
    
    public int getCusId() {
        return cusId;
    }
    public int getSeatingCapacity() {
        return seatingCapacity;
    }
    
    public double getPrice() {
        return price;
    }
    
    public double getkm() {
        return km;
    }
    
    public double getMilege() {
        return milege;
    }
    public String getBrand() {
        return brand;
    }
    
    public String getColor() {
        return color;
    } 
    
    public String getFuelType() {
        return fuelType;
    }
    
    public String getVehicleType() {
        return vehicleType;
    }
    
    public String getModelName() {
        return modelName;
    }
    
    public String getImage() {
        return image;
    } 
    
    public double getNoOfYears() {
        return noOfYears;
    }
    
    public String getCustomerName() {
        return customerName;
    }
    
    public String getPhoneNo() {
        return phoneNo;
    }
    
    
    public void setCar(int carId,int seatingCapacity,double price,double milege,String color,String fuelType,String vehicleType,String modelName,String brand,String image) {
        this.carId = carId;
        this.seatingCapacity = seatingCapacity;
        this.price = price;
        this.milege = milege;
        this.color = color;
        this.fuelType = fuelType;
        this.vehicleType = vehicleType;
        this.modelName = modelName;
        this.brand = brand;
        this.image = image;
    }
    
    public void setOldCar(int carId,int seatingCapacity,double price,double milege,String color,String fuelType,String vehicleType,String modelName,String brand,String customerName,String phoneNo,double km,double noOfYears) {
        this.carId = carId;
        this.seatingCapacity = seatingCapacity;
        this.price = price;
        this.milege = milege;
        this.color = color;
        this.fuelType = fuelType;
        this.vehicleType = vehicleType;
        this.modelName = modelName;
        this.brand = brand;
        this.customerName = customerName;
        this.km = km;
        this.noOfYears = noOfYears;
        this.phoneNo = phoneNo;
        //this.image = image;
        
        
    }
     
    public void setService(int cusId,String modelName,String brand,double noOfYears,double km,double price/*,String image*/) {
        this.cusId = cusId;
        this.price = price;
        this.modelName = modelName;
        this.brand = brand;
        this.noOfYears = noOfYears;
        this.km = km;
        //this.image = image;
    }
     
     
}
