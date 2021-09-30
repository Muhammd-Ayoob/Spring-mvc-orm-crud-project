package com.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.dao.EmployeeDao;
import com.model.Employee;

@Component
public class EmployeeDaoImpl implements EmployeeDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	/**
	 * @return the hibernateTemplate
	 */
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	/**
	 * @param hibernateTemplate the hibernateTemplate to set
	 */
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	//Method to add and update(Edit) Employee data in database
	@Transactional
	public void addEmployee(Employee employee)
	{
		System.out.println(employee);
		this.hibernateTemplate.saveOrUpdate(employee);
		
	}
	
	//Method to fetch all records from database
	public List<Employee> getAll()
	{
		
		List<Employee> list= hibernateTemplate.loadAll(Employee.class);
		
		return list;
	}
	
	
	//Method to delete data from database
	@Transactional
	public void delete(int id)
	{
		Employee employee= hibernateTemplate.load(Employee.class,id);
		
		hibernateTemplate.delete(employee);
	}
	
	//Method to get single row from database by primary key i-e id
	public Employee getSingle(int id)
	{
		Employee employee = hibernateTemplate.load(Employee.class, id);
		
		return employee;
	}
	
	
}
