/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.Cookie;

/**
 *
 * @author 7652
 */
public class CustomerMasterDAO extends BaseDAO{
    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;
    
     public boolean  createAccount(User u) {
     
        try {
            
            try {
                connection = getConnection();
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            String sql = "insert into Customer(email,userName,phoneNo,address,password)"
                    + "values(?,?,?,?,?)";
            
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setString(1,u.getEmail());
            preparedStatement.setString(2,u.getUserName());
            preparedStatement.setString(3,u.getPhoneNo());
            preparedStatement.setString(4,u.getAddress());
            preparedStatement.setString(5,u.getPassword());
            
                int count = preparedStatement.executeUpdate();
                
                if(count>0)
                {
                    System.out.println("Successfully Inserted");
                    return true;
                }else{
                    System.out.println("insertion failed");
                   
                }
            
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         finally{
         
              closeConnection(connection, preparedStatement);
          
        }
         return false;
     
         
     }
     public boolean  createService(User u) {
    
     
        try {
            
            try {
                connection = getConnection();
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            String sql = "insert into Servicing(carModel,carBrand,carNumber,date,time,typeOfService,cusId)"
                    + "values(?,?,?,?,?,?,?)";
            
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setString(1,u.getModel());
            preparedStatement.setString(2,u.getBrand());
            preparedStatement.setString(3,u.getNumber());
            preparedStatement.setString(4,u.getDate());
            preparedStatement.setString(5,u.getTime());
            preparedStatement.setString(6,u.getType());
            preparedStatement.setInt(7,u.getUserId());
            
                int count = preparedStatement.executeUpdate();
                
                if(count>0)
                {
                    System.out.println("Successfully Inserted");
                    return true;
                }else{
                    System.out.println("insertion failed");
                   
                }
            
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         finally{
         
              closeConnection(connection, preparedStatement);
          
        }
         return false;
     
         
     }
     
     public List displayCars(){
       
          ArrayList<Car> addlist=new ArrayList<>();
          String sql="select * from NewCar natural join CarDescription natural join Shop";
          try {
            
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            preparedStatement=connection.prepareStatement(sql);
             rs=preparedStatement.executeQuery();

            while(rs.next())
            {   Car c  = new Car();
                System.out.println("test");
                c.setCar(rs.getInt("carId"),rs.getInt("seatingCapacity"),rs.getDouble("price"),rs.getDouble("milege"),rs.getString("color"),rs.getString("fuelType"),rs.getString("vehicleType"),rs.getString("modelName"),rs.getString("brand"),rs.getString("image"));
                addlist.add(c);
                System.out.print(rs.getString("modelName"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         finally{
          closeConnection(connection, preparedStatement);
        }
      return addlist;
      }
     
     public List displayOldCars(){
       
          ArrayList<Car> addlist=new ArrayList<>();
          String sql="select * from OldCar o join CarDescription d join Customer c where o.modelId = d.modelId and o.cusIdSeller = c.cusId";
          try {
            
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            preparedStatement=connection.prepareStatement(sql);
             rs=preparedStatement.executeQuery();

            while(rs.next())
            {   Car c  = new Car();
                System.out.println("test");
                c.setOldCar(rs.getInt("carId"),rs.getInt("seatingCapacity"),rs.getDouble("priceOld"),rs.getDouble("milege"),rs.getString("color"),rs.getString("fuelType"),rs.getString("vehicleType"),rs.getString("modelName"),rs.getString("brand"),rs.getString("userName"),rs.getString("phoneNo"),rs.getDouble("km"),rs.getDouble("noOfYears"));
                addlist.add(c);
                System.out.print(rs.getString("modelName"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         finally{
          closeConnection(connection, preparedStatement);
        }
            return addlist;
        }
     
     public User findUser(String name){
       
            User user=new User();
            String sql="select * from Customer where userName like ?";
          try {
            
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            rs=preparedStatement.executeQuery();
            
            
            
            while(rs.next())
            {   
                System.out.println("test");
                user.setUser(rs.getString("userName"), rs.getString("email"), rs.getString("phoneNo"), rs.getString("address"), rs.getString("password"));
                user.setUserId(rs.getInt("cusId"));
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         finally{
          closeConnection(connection, preparedStatement);
        }
      return user;
      }
     /*
    public int removeCustomerById(int id)
      {   int count = 0;            
        try {
            try {
                connection = getConnection();
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            String sql="delete from HR.Customer where c_id = ?";
            
            preparedStatement= connection.prepareStatement(sql);
            
             preparedStatement.setInt(1, id);
                count = preparedStatement.executeUpdate();
                 if(count>0)
                {
                    System.out.println("Successfully Deleted");
                }else{
                    System.out.println("Deletion failed");
                }
            
            } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
         
         
              closeConnection(connection, preparedStatement);
          
        
        }
        
            
            return count;
    }
      public List findCustomerByName(String name){
       
          ArrayList<Customer> addlist=new ArrayList<Customer>();
            String sql="select * from HR.Customer where firstName like '%"+name+"%'";
          try {
            
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            preparedStatement=connection.prepareStatement(sql);
             rs=preparedStatement.executeQuery();
            while(rs.next())
            {   Customer c  = new Customer();
                System.out.println("test");
                c.setCustomerId(rs.getInt(1));
                c.setFirstName(rs.getString(2));
                c.setLastName(rs.getString(3));
                c.setTitle(rs.getString(4));
                c.setDepartment(rs.getString(5));
                c.setEmail(rs.getString(6));
                addlist.add(c);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         finally{
          closeConnection(connection, preparedStatement);
        }
      return addlist;
      }
      */
     public String checkLogin(String userName,String password)
      {
          String cusId = null;
           String sql="select* from Customer where email like ?";
        try {
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,userName);
            rs = preparedStatement.executeQuery();
         
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.print("Hii from cdao");
        String dbPassword = null;
        try {
            rs.next();
            System.out.println("PASSWORD:"+dbPassword+"name:"+rs.getString("userName"));
            dbPassword = rs.getString(6);
            cusId= rs.getString("cusId");
            System.out.println("PASSWORD:"+dbPassword+"name:"+rs.getString("userName")+"dbpass:"+dbPassword+"pass"+password);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        finally{
          closeConnection(connection, preparedStatement);
        }
        
        //return password.equals(dbPassword);
        if(password.equals(dbPassword))
            return cusId;
        return null;
      }
     
      public String checkLogin1(String userName,String password)
      {
        String user = null;
        String sql="select* from Customer where email like ?";
      
        try {
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,userName);
            rs = preparedStatement.executeQuery();
         
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.print("Hii from cdao");
        String dbPassword = null;
        try {
            rs.next();
            System.out.println("PASSWORD:"+dbPassword+"name:"+rs.getString("userName"));
            dbPassword = rs.getString(6);
            user= rs.getString("userName");
            System.out.println("PASSWORD:"+dbPassword+"name:"+rs.getString("userName")+"dbpass:"+dbPassword+"pass"+password);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        finally{
          closeConnection(connection, preparedStatement);
        }
            
        //return password.equals(dbPassword);
        if(password.equals(dbPassword))
            return user;
        return null;
      }
      
      public boolean changePassword(String userName, String newPassword)
      {
          int count = 0;
          String sql = "Update customer Set password = ? where userName = ?";
          
        try {
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
          
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,newPassword);
            preparedStatement.setString(2,userName);
            count = preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         finally{
          closeConnection(connection, preparedStatement);
        }
       
        return (count!=0);
      }
      
    /*  public boolean addUsedCar(Car car)
      { 
          String ssql = "Select* from cardescription where brand = 'Honda' and modelName = 'City' ";
          
          int count = 0;
          String sql = "Insert into oldcar(noOfYesrs,km priceOld,cusIdSeller,modelId) values(4.0,90000.0,500000.0,1,2)";
          
        try {
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
          
        try {
            
            preparedStatement = connection.prepareStatement(ssql);
            //preparedStatement.setString(1,car.getBrand());
            //preparedStatement.setString(2,car.getModelName());
            rs = preparedStatement.executeQuery(ssql);
            rs.next();
            System.out.println("ModelId = "+ rs.getInt("modelId"));
            int modelId = rs.getInt("modelId");
            preparedStatement = connection.prepareStatement(sql);
           /* preparedStatement.setDouble(1,car.getNoOfYears());
            preparedStatement.setDouble(2,car.getkm());
            preparedStatement.setDouble(3,car.getPrice());
            preparedStatement.setInt(4,car.getCusId());
            preparedStatement.setInt(5,modelId);
            count = preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         finally{
          closeConnection(connection, preparedStatement);
        }
       
        return (count!=0);
      } */
      
      public int findCar(Car car)
      { 
          String ssql = "Select* from cardescription where brand like ? and modelName like ?";
          int modelId = 1;
          int count = 0;
          
        try {
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
          
        try {
            
            preparedStatement = connection.prepareStatement(ssql);
            preparedStatement.setString(1,car.getBrand());
            preparedStatement.setString(2,car.getModelName());
            rs = preparedStatement.executeQuery(ssql);
            rs.next();
            System.out.println("ModelId = "+ rs.getInt("modelId"));
            modelId = rs.getInt("modelId");
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         
       
        return modelId;
      }
      
      public boolean addUsedCar(Car car,int modelId) throws FileNotFoundException
      { 
        String myloc = null;
//        File image= new File(car.getImage());
        FileInputStream fis = null;
        System.out.print("image ="+ car.getImage());
        
        String sql = "Insert into oldcar(noOfYears,km,priceOld,cusIdSeller,modelId) values(?,?,?,?,?)";
          
          int count = 0;
          
        try {
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
          System.out.print("years"+ car.getNoOfYears()+"km"+car.getkm()+"price"+car.getPrice()+"cusId"+car.getCusId()+"modelId"+modelId);
        try {
            
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setDouble(1,car.getNoOfYears());
            preparedStatement.setDouble(2,car.getkm());
            preparedStatement.setDouble(3,car.getPrice());
            preparedStatement.setInt(4,car.getCusId());
            preparedStatement.setInt(5,modelId);
          //  fis = new FileInputStream(image);
            //preparedStatement.setBinaryStream(6, (InputStream) fis, (int) (image.length()));
            count = preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         finally{
          closeConnection(connection, preparedStatement);
        }
        System.out.print("End");
       
        return (count!=0);
      }
      
      
      public boolean bookCar(int carId, int cusId)
      {
          int count = 0;
          String sql = "Update newcar Set cusId = ? where carId = ?";
          
        try {
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
          
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,cusId);
            preparedStatement.setInt(2,carId);
            count = preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         finally{
          closeConnection(connection, preparedStatement);
        }
       
        return (count!=0);
      }
     
      public boolean bookOldCar(int carId, int cusId)
      {
          int count = 0;
          String sql = "Update oldcar Set cusIdBuyer = ? where carId = ?";
          
        try {
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
          
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,cusId);
            preparedStatement.setInt(2,carId);
            count = preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         finally{
          closeConnection(connection, preparedStatement);
        }
       
        return (count!=0);
      }
      
      
      public List bookedCars(int cusId){
       
          ArrayList<Car> addlist=new ArrayList<>();
          String sql="select * from NewCar natural join CarDescription natural join Shop where cusId = ?";
          try {
            
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,cusId);
            rs=preparedStatement.executeQuery();

            while(rs.next())
            {   Car c  = new Car();
                System.out.println("test");
                c.setCar(rs.getInt("carId"),rs.getInt("seatingCapacity"),rs.getDouble("price"),rs.getDouble("milege"),rs.getString("color"),rs.getString("fuelType"),rs.getString("vehicleType"),rs.getString("modelName"),rs.getString("brand"),rs.getString("image"));
                addlist.add(c);
                System.out.print(rs.getString("modelName"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         finally{
          closeConnection(connection, preparedStatement);
        }
      return addlist;
      }


     
}
