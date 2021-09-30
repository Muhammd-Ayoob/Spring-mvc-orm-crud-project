package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.dao.EmployeeDao;
import com.daoimpl.EmployeeDaoImpl;
import com.model.Employee;

import net.bytebuddy.matcher.ModifierMatcher.Mode;

@Controller
public class TestController {

	@Autowired
	private EmployeeDao dao = new EmployeeDaoImpl();
	
	
	// Controller to display home page.
	
	@RequestMapping("/")
	public String test(Model model)
	{
		List<Employee> list= dao.getAll();
		
		model.addAttribute("employees",list);
		
		return "index";
	}
	
	
	//Controller to call addEmployee page
	@RequestMapping("/add")
	public String add(@ModelAttribute Employee employee)
	{
		return "addEmployee";
		
	}
	
	//Controller to call addEmployee method of daoimpl
	@RequestMapping(value = "/empHandler", method = RequestMethod.POST)
	public RedirectView hanleEmployee(@ModelAttribute Employee employee, HttpServletRequest request)
	{
		dao.addEmployee(employee);

		RedirectView redirectView= new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/");
		
		return redirectView;
	}
	
	
	
	//Delete controller
	@RequestMapping("/delete/{id}")
	public RedirectView deleteEmployee(@PathVariable("id") int id, HttpServletRequest request)
	{
		dao.delete(id);
		
		RedirectView redirectView= new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/");
		
		return redirectView;
	}
	
	//update controller
	@RequestMapping("/update/{id}")
	public String update(@PathVariable("id") int id, Model model)
	{
		Employee employee= dao.getSingle(id);
		
		model.addAttribute("employee", employee);
	
		return "update_form";
	}
	
}
