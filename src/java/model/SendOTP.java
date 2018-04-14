/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.math.*;
import java.util.*;
/**
 *
 * @author ANIKET
 */
public class SendOTP{
    int r;
    public int generateOTP(){
        
        double p = Math.random();
        r = (int)(p*1000000);
        r = r%1000000;
        
        System.out.println("r:"+r+"p:"+p);
        return r;
    }
    
    public boolean checkOTP(String rotp)
    {
        int otp = Integer.parseInt(rotp);
        return (r == otp);
    }
    
    
}
