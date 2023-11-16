package utility;

import java.util.Properties;
import javax.mail.*;
import javax.activation.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.sun.mail.imap.protocol.FLAGS;



public class EmailUtility {
                
                
                  static String host = "outlook.office365.com";
      static String mailStoreType = "pop3";
      static String MyOTP=null;
                

    public static void emailExtentReport(String reportPath, String reportFileName) {

        final String username = "ashirbad.prusty@conduent.com";
        final String password = "P@ssw0rd7";
        
        
        System.out.println("ReportPath "+reportPath);
        
        Properties props = new Properties();
        props.put("mail.smtp.auth", true);
        props.put("mail.smtp.starttls.enable", true);
        props.put("mail.smtp.host", "smtp.office365.com");
        props.put("mail.smtp.port", "587");
        
        
        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {
               System.out.println("Email Process Started");
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("ashirbad.prusty@conduent.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("ashirbad.prusty@conduent.com"));
            message.setSubject("Extent Report");
            message.setText("PFA");

            MimeBodyPart messageBodyPart = new MimeBodyPart();

            Multipart multipart = new MimeMultipart();
            System.out.println("Email Process Started");
            messageBodyPart = new MimeBodyPart();
            String filePath = reportPath;
            System.out.println(reportPath);
            String fileName = reportFileName;
            DataSource source = new FileDataSource(filePath);
            System.out.println("Email step 2");
           messageBodyPart.setDataHandler(new DataHandler(source));
            messageBodyPart.setFileName(fileName);
            multipart.addBodyPart(messageBodyPart);

            message.setContent(multipart);

            System.out.println("Sending");

       //    Transport.send(message);

           System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
      }
    
    
    
                   public static String GetOTP(String username, String password) {
                   
                      try {

                      Properties properties = new Properties();

                      properties.put("mail.pop3.host", host);
                      properties.put("mail.pop3.port", "995");
                      properties.put("mail.pop3.starttls.enable", "true");
                      Session emailSession = Session.getDefaultInstance(properties);
                  
                 
                      Store store = emailSession.getStore("pop3s");
                      Thread.sleep(5000);

                      store.connect(host, username, password);



                      Folder emailFolder = store.getFolder("Inbox");
//                      emailFolder.open(Folder.READ_ONLY);
                      emailFolder.open(Folder.READ_WRITE);


                      



                     Message[] messages = emailFolder.getMessages();

                int  n = messages.length;
                  int mcount = (n-30);
                  
                      for (int i = mcount; i < n; i++) {
                                 
                                  Message message = messages[i];    

                                
                              if (message.getSubject().toString().equals("Sandbox: Verify your identity in Salesforce")) {   
                                  
                                 String[] words = message.getContent().toString().split("Verification Code: ");
                                 String[] OTPText = words[1].split("\\s");
                                 MyOTP = OTPText[0].trim();
                                 message.setFlag(FLAGS.Flag.DELETED, true);

                        }
                      }


                      emailFolder.close(false);
                      store.close();

                      } catch (NoSuchProviderException e) {
                         e.printStackTrace();
                      } catch (MessagingException e) {
                         e.printStackTrace();
                      } catch (Exception e) {
                         e.printStackTrace();
                      }
                      System.out.println(MyOTP);
                                return MyOTP;
                   }
    

    }




