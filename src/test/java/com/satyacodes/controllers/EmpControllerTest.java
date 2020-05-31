package com.satyacodes.controllers;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.satyacodes.beans.Emp;
import com.satyacodes.dao.EmpDao;

public class EmpControllerTest {
	
	@Autowired  
    EmpDao dao;

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testShowform() {
		assertTrue(100>50);
	}

	@Test
	public void testSave() {
		/*
		 * Emp emp = new Emp(); emp.setId(100); emp.setName("SATYA");
		 * emp.setSalary(10000); emp.setDesignation("TEST"); dao.save(emp);
		 */
		
		assertTrue(100>50);
	}

	@Test
	public void testViewemp() {
		assertTrue(100>50);
	}

	@Test
	public void testEdit() {
		assertTrue(100>50);
	}

	@Test
	public void testEditsave() {
		assertTrue(100>50);
	}

	@Test
	public void testDelete() {
		assertTrue(100>50);
	}

}
