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
    import java.io.BufferedReader;
    import java.io.IOException;
    import java.io.InputStreamReader;
    import java.io.OutputStreamWriter;
    import java.net.HttpURLConnection;
    import java.net.URL;
    import java.net.URLConnection;
    import java.net.URLEncoder;
     
    public class SendSms {
    	public void sendSms(int otp, String phoneNo) {
    		try {   
                        
    			// Construct data
    			String apiKey = "apikey=" + "zZrSTK4fTbw-vSZKSbQsqgI8MaNJlFuDPUo3H8fs0P";
    			String message = "&message=" + "Hii from Get Your Wheels. Your otp is:"+otp;
    			String sender = "&sender=" + "TXTLCL";
    			String numbers = "&numbers=" + phoneNo;
    			
    			// Send data
    			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
    			String data = apiKey + numbers + message + sender;
    			conn.setDoOutput(true);
    			conn.setRequestMethod("POST");
    			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
    			conn.getOutputStream().write(data.getBytes("UTF-8"));
    			final StringBuffer stringBuffer;
                        try (BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
                            stringBuffer = new StringBuffer();
                            String line;
                            while ((line = rd.readLine()) != null) {
                                stringBuffer.append(line);
                            }
                        }
    			
    			System.out.println("SMS sent ");
    			//return stringBuffer.toString();
    		} catch (IOException e) {
    			System.out.println("Error SMS "+e);
    			//return "Error "+e;
    		}
    	}
    }
