package com.hospital;

import java.math.BigInteger;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mahesh
 */
public class SessionIdentifierGenerator {
    private Random random = new Random();
//Properties props = new Properties();
     
  public String nextSessionId() {
    return new BigInteger(130, random).toString(32);
  }
  public void  sendValidationMail(String sub,String to){
          // Recipient's email ID needs to be mentioned.
       // String to = "mail2maheshj90@gmail.com";

        // Sender's email ID needs to be mentioned
        String from = "maheshvj02@gmail.com";

        // Assuming you are sending email from localhost
        String host = "smtp.gmail.com";

        // Get system properties
        Properties properties = System.getProperties();

        // Setup mail server
        properties.setProperty("mail.smtp.host", host);
        properties.setProperty("mail.smtp.starttls.enable", "true");
        properties.setProperty("mail.smtp.auth", "true");
        properties.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");

      // Get the default Session object.
        // Session session = Session.getDefaultInstance(properties);
        Session session = Session.getInstance(properties,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(
                                "maheshvj02@gmail.com", "9551086421mine");
                    }
                });
        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO,
                    new InternetAddress(to));

  
            message.setSubject("This is the Subject Line!");

            // Now set the actual message
            String address="http://localhost:8080/hospitalProject/validatePatient.jsp?val="+sub;
           String subj="This is your verification code\n"
                    + "to activate your account please click the following link \n"
                    + "to verify your mail id <a href=\""+address+"\">ACTIVATE</a>";

 message.setContent(subj,"text/html; charset=utf-8");
           // message.setText("");
            // Send message
           // Transport transport = session.getTransport("smtp");
            //transport.connect("smtp.gmail.com", "maheshvj02@gmail.com", "9551086421mine");
            Transport.send(message);
            
            System.out.println("Sent message successfully....");
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
  
  }
  
}
