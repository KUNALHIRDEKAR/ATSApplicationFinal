package com.nt.service;

import java.util.Optional;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import com.nt.EmailConfig;
import com.nt.command.UserCommand;
import com.nt.entity.UserEntity;
import com.nt.repository.ATSRepository;

@Service
public class ATSService {

	@Autowired
	ATSRepository aTSRepository;
	@Autowired
	private EmailConfig emailConfig;

	public UserEntity saveNewUser(UserEntity userEntity) {
		// TODO Auto-generated method stub
		userEntity.setPazzword(getRegistrationNo());
		userEntity.setRole("User");
		UserEntity userEntity2 = aTSRepository.save(userEntity);
		UserCommand userCommand = new UserCommand();
		
		emailSend(userEntity2);
		BeanUtils.copyProperties(userEntity2, userCommand);
		return userEntity2;
	}

	public void emailSend(UserEntity userEntity2) {

		JavaMailSenderImpl javaMailSenderImpl = new JavaMailSenderImpl();
		javaMailSenderImpl.setHost(emailConfig.getHost());
		javaMailSenderImpl.setPort(emailConfig.getPort());
		javaMailSenderImpl.setUsername(emailConfig.getUsername());
		javaMailSenderImpl.setPassword(emailConfig.getPassword());
		
		// create mail instance
		
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
	simpleMailMessage.setCc("KunalHIrdekar@official.com");
		simpleMailMessage.setFrom("ATSDepart@Official.com");
		simpleMailMessage.setTo(userEntity2.getEmail());
		simpleMailMessage.setSubject("Temporary password ");
		simpleMailMessage.setText("Hello " + userEntity2.getFirstName() + "  " + userEntity2.getLastName()
				+ "\n"+"Your Temporary password is ::" + userEntity2.getPazzword()+
				"\n"
		);

		// sendMail
		javaMailSenderImpl.send(simpleMailMessage);
	}
	
	public String getRegistrationNo() 
	{
		Random rand=new Random();
		int rand_int2=rand.nextInt(99);
		String characters="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@&";
		String randomString="";
		int length=8;
		char[] text =new char[length];
		for (int i = 0; i < length; i++) {
			text[i]=characters.charAt(rand.nextInt(characters.length()));
		}
		for (int i = 0; i < text.length; i++) {
			randomString+=text[i];
		}
		
	String vehicalregnumber= randomString;
		return vehicalregnumber;
	}

	public UserEntity find(String s, String pass) {
		
		UserEntity userEntity=aTSRepository.findByEmailAndPazzword(s,pass);
		
		return userEntity;
	}

	public UserCommand findByID(Integer id) {
		Optional<UserEntity> optionalUserEntity=aTSRepository.findById(id);
		UserCommand userCommand =new UserCommand();
		if(optionalUserEntity.isPresent())
		{
			UserEntity userEntity=optionalUserEntity.get();
			BeanUtils.copyProperties(userEntity,userCommand);
				
		}
		return userCommand;
	}

	public UserCommand saveNewPassword(Integer id) {
		// TODO Auto-generated method stub
		Optional<UserEntity> optionalUserEntity=aTSRepository.findById(id);
		UserCommand userCommand =new UserCommand();
		if(optionalUserEntity.isPresent())
		{
			UserEntity userEntity=optionalUserEntity.get();
			BeanUtils.copyProperties(userEntity,userCommand);
				
		}
		return userCommand;
	}


}
