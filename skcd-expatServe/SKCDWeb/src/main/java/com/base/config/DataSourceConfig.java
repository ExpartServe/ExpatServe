package com.base.config;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Configuration
public class DataSourceConfig {
	
	@Bean
	public DataSource dataSource(){
		System.out.println("calling datasource");
		try {
			DataSource dS=(DataSource) new InitialContext().lookup("java:comp/env/jdbc/PostgreSQLDS");
			return dS;
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
