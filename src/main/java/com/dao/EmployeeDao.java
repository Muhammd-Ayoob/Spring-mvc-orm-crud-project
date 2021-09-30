package com.dao;

import java.util.List;

import com.model.Employee;

public interface EmployeeDao {

	public void addEmployee(Employee employee);
	
	public List<Employee> getAll();
	
	public void delete(int id);
	
	public Employee getSingle(int id);
	
}
