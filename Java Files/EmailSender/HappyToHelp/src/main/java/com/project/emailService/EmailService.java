package com.project.emailService;

import org.springframework.stereotype.Service;

import com.iet.sender.EmailSender;

@Service
public class EmailService
{
	public void sendSimpleEmail(String emails) 
	{  
	      try 
	      {
	    	   EmailSender email = new EmailSender("HappyTohelp.ElectronicService@gmail.com","ywmsnxwevgdievvw");
			   email.sendEmail(emails, "change your Password : http://localhost:9090/Reset", "Reset your password");
		  } 
	      catch (Exception e) 
	      {
			   e.printStackTrace();
		  }
	 }
}
