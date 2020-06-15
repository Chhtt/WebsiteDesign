package com.saltedfish.test;


import com.saltedfish.dao.UserDAO;
import com.saltedfish.entity.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestCase {

	@Test
	public void testMapper() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		UserDAO dao = ac.getBean(UserDAO.class);
		User u1 = dao.login("cht","333");
		User u2 = dao.login("cht", "333");
		System.out.println(u1.getName().equals(u2.getName()));
	}
}
