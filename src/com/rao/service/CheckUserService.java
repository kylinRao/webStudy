package com.rao.service;

import java.sql.Connection;
import java.sql.ResultSet;

import com.rao.dao.UserDao;
import com.rao.dao.impl.UserDaoImpl;
import com.rao.entity.User;
import com.rao.util.ConnectionFactory;

public class CheckUserService {
	
	private UserDao userDao = new UserDaoImpl();
	
	public boolean check(User user){
		
		Connection conn = null;
		
		try{
			conn = ConnectionFactory.getInstance().makeConnetion();
			conn.setAutoCommit(false);
			
			ResultSet resultSet = userDao.get(conn, user);
			while(resultSet.next()){
				return true;
			}
			
		}catch (Exception e){
			e.printStackTrace();
			try{
				conn.rollback();
				
			}catch (Exception e2){
				e2.printStackTrace();
			}
		}finally{
			try{
				conn.close();
			}catch (Exception e3){
				e3.printStackTrace();
			}
			
		}
		return false;
	}
	

}
