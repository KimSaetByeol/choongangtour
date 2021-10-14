package com.choongangtour.web.user.dao;

import java.util.List; 
import javax.inject.Inject; 
import org.apache.ibatis.session.SqlSession; 
import org.springframework.stereotype.Repository;

import com.choongangtour.web.user.model.UserVO; 

@Repository 
public class UserDAOImpl implements UserDAO{ 
	@Inject 
	private SqlSession sqlSession; 
	
	@Override 
	public List<UserVO> getUserList() throws Exception { 
		return sqlSession.selectList("com.choongangtour.web.user.user_SQL.getUserList");
	} 
	
	@Override 
	public UserVO getUserInfo(String id) throws Exception { 
		return sqlSession.selectOne("com.choongangtour.web.user.user_SQL.getUserInfo", id); 
	} 
	
	@Override public int insertUser(UserVO userVO) throws Exception { 
		return sqlSession.insert("com.choongangtour.web.user.user_SQL.insertUser", userVO); 
	} 
	
	@Override public int updateUser(UserVO userVO) throws Exception { 
		return sqlSession.update("com.choongangtour.web.user.user_SQL.updateUser", userVO); 
	} 
	
	@Override public int deleteUser(String id) throws Exception { 
		return sqlSession.delete("com.choongangtour.web.user.user_SQL.deleteUser", id);
	} 
	
}
