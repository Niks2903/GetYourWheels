package model;

    import java.util.Properties;    
    import javax.mail.*;    
    import javax.mail.internet.*;    
    /*class Mailer{  
        public static void send(String from,String password,String to,String sub,String msg){  
              //Get properties object    
              Properties props = new Properties();    
              props.put("mail.smtp.host", "smtp.gmail.com");    
              props.put("mail.smtp.socketFactory.port", "465");    
              props.put("mail.smtp.socketFactory.class",    
                        "javax.net.ssl.SSLSocketFactory");    
              props.put("mail.smtp.auth", "true");    
              props.put("mail.smtp.port", "465");    
              //get Session   
              Session session = Session.getDefaultInstance(props,    
               new javax.mail.Authenticator() {    
               protected PasswordAuthentication getPasswordAuthentication() {    
               return new PasswordAuthentication(from,password);  
               }    
              });    
              //compose message    
              try {    
               MimeMessage message = new MimeMessage(session);    
               message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
               message.setSubject(sub);    
               message.setText(msg);    
               //send message  
               Transport.send(message);    
               System.out.println("message sent successfully");    
              } catch (MessagingException e) {throw new RuntimeException(e);}    
                 
        }  
    } */ 
    public class SendEmail{    
       public void mail(User user) {    
         //from,password,to,subject,message  
         //Mailer.send("aniketwalse1@gmail.com","7507660168andy1","aniketwalse1@gmail.com","hello javatpoint","Call From Servlet..");  
         //change from, password and to
              Properties props = new Properties();
              props.put("mail.smtp.host", "smtp.gmail.com");    
              props.put("mail.smtp.socketFactory.port", "587");    
              props.put("mail.smtp.socketFactory.class",    
                        "javax.net.ssl.SSLSocketFactory");    
              props.put("mail.smtp.auth", "true");    
              props.put("mail.smtp.port", "587"); 
              props.put("mail.smtp.starttls.enable","true");
              //get Session   
              Session session = Session.getInstance(props,    
               new javax.mail.Authenticator() {    
               protected PasswordAuthentication getPasswordAuthentication() {    
               return new PasswordAuthentication("aniketwalse1@gmail.com","andywals1");  
               }    
              });    
              //compose message    
              try {
              
               MimeMessage message = new MimeMessage(session);    
               message.addRecipient(Message.RecipientType.TO,new InternetAddress(user.getEmail()));    
               message.setSubject("Get Your Wheels");    
               message.setText("Welcome to Get Your Wheels NO:1 CAR SHOPPING AND MAINTANENCE WEBSITE. You have successfully been registerd as-"+user.getUserName()+" "+user.getEmail()+" "+user.getAddress()+", with contact no: "+user.getPhoneNo()+". We look forward to serve you.");    
               //send message  
               Transport.send(message);    
               System.out.println("message sent successfully");    
               } catch (MessagingException e) {throw new RuntimeException(e);}    
                 
        }
       
       public void ServiceMail(User user) {    
         //from,password,to,subject,message  
         //Mailer.send("aniketwalse1@gmail.com","7507660168andy1","aniketwalse1@gmail.com","hello javatpoint","Call From Servlet..");  
         //change from, password and to
              Properties props = new Properties();
              props.put("mail.smtp.host", "smtp.gmail.com");    
              props.put("mail.smtp.socketFactory.port", "587");    
              props.put("mail.smtp.socketFactory.class",    
                        "javax.net.ssl.SSLSocketFactory");    
              props.put("mail.smtp.auth", "true");    
              props.put("mail.smtp.port", "587"); 
              props.put("mail.smtp.starttls.enable","true");
              //get Session   
              Session session = Session.getInstance(props,    
               new javax.mail.Authenticator() {    
               protected PasswordAuthentication getPasswordAuthentication() {    
               return new PasswordAuthentication("aniketwalse1@gmail.com","andywals1");  
               }    
              });    
              //compose message    
              try {
              
               MimeMessage message = new MimeMessage(session);    
               message.addRecipient(Message.RecipientType.TO,new InternetAddress(user.getEmail()));    
               message.setSubject("Get Your Wheels");    
               message.setText(" "+user.getEmail()+"your service appointment has been scheduled for the specified time slot.");    
               //send message  
               Transport.send(message);    
               System.out.println("message sent successfully");    
               } catch (MessagingException e) {throw new RuntimeException(e);}    
                 
        }
       
       public void BookedMail(String email) {    
         //from,password,to,subject,message  
         //Mailer.send("aniketwalse1@gmail.com","7507660168andy1","aniketwalse1@gmail.com","hello javatpoint","Call From Servlet..");  
         //change from, password and to
              Properties props = new Properties();
              props.put("mail.smtp.host", "smtp.gmail.com");    
              props.put("mail.smtp.socketFactory.port", "587");    
              props.put("mail.smtp.socketFactory.class",    
                        "javax.net.ssl.SSLSocketFactory");    
              props.put("mail.smtp.auth", "true");    
              props.put("mail.smtp.port", "587"); 
              props.put("mail.smtp.starttls.enable","true");
              //get Session   
              Session session = Session.getInstance(props,    
               new javax.mail.Authenticator() {    
               protected PasswordAuthentication getPasswordAuthentication() {    
               return new PasswordAuthentication("aniketwalse1@gmail.com","andywals1");  
               }    
              });    
              //compose message    
              try {
              
               MimeMessage message = new MimeMessage(session);    
               message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));    
               message.setSubject("Get Your Wheels");    
               message.setText("Your car has been booked. We will update you with further information.");    
               //send message  
               Transport.send(message);    
               System.out.println("message sent successfully");    
               } catch (MessagingException e) {throw new RuntimeException(e);}    
                 
        }
}    
        