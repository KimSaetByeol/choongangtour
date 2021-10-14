package com.choongangtour.web.user.service;

import java.util.List; 
import javax.inject.Inject; 
import org.slf4j.Logger; 
import org.slf4j.LoggerFactory; 
import org.springframework.stereotype.Service;

import com.choongangtour.web.user.dao.UserDAO;
import com.choongangtour.web.user.model.UserVO; 

@Service 
public class UserServiceImpl implements UserService{ 
	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class); 
	
	@Inject 
	private UserDAO userDAO; 
	
	@Override 
	public List<UserVO> getUserList() throws Exception { 
		return userDAO.getUserList(); 
	} 
	
	@Override 
	public UserVO getUserInfo(String id) throws Exception { 
		return userDAO.getUserInfo(id); 
	} 
	
	@Override 
	public void insertUser(UserVO userVO) throws Exception { 
		userDAO.insertUser(userVO); 
	} 
	
	@Override 
	public void updateUser(UserVO userVO) throws Exception { 
		userDAO.updateUser(userVO); 
	
	} 
	
	@Override 
	public void deleteUser(String uid) throws Exception { 
		userDAO.deleteUser(uid); 
	} 
	
}
