package com.rao.test;

import java.sql.Connection;
import java.sql.SQLException;

import com.rao.util.ConnectionFactory;

public class ConnectionFactoryTest {

	public static void main(String[] args) throws SQLException {
		
		ConnectionFactory cf = ConnectionFactory.getInstance();
		Connection conn = cf.makeConnetion();
		System.out.println(conn.getAutoCommit());

	}

}
