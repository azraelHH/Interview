package com.dapp.example.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dapp.example.model.Employee;
import com.dapp.example.service.EmployeeService;

@Controller
public class HomeController {
	
	@Autowired
	public EmployeeService service;
	
	@RequestMapping("/home")
	public String showWelcome(HttpServletRequest request) {
		
		request.setAttribute("mode", "MODE_HOME");
		return "home";
		
	}
	
	
	@RequestMapping("/register")
	public String showRegister(HttpServletRequest request) {
		
		request.setAttribute("mode", "MODE_REGISTER");
		return "home";
		
	}
	
	@PostMapping("/add-employee")
	public String addEmployee(@ModelAttribute Employee employee, BindingResult result , HttpServletRequest request)
	{
		service.saveEmployee(employee);
		request.setAttribute("mode", "MODE_HOME");
		return "home";
		
	}
	
	@RequestMapping("/show-employees")
	public String showEmployees(HttpServletRequest request)
	{
		request.setAttribute("employees", service.showAllEmployees());
		request.setAttribute("mode", "ALL_EMPLOYEES");
		return "home";
	}
	
	@RequestMapping("/edit-employee")
	public String editEmployee(@RequestParam int id, HttpServletRequest request)
	{
		
		request.setAttribute("employee", service.editEmployee(id));
		request.setAttribute("mode", "ALL_EMPLOYEES");
		return "home";
		
	}
	
	@RequestMapping("/delete-employee")
	public String deleteEmployee(@RequestParam int id, HttpServletRequest request)
	{
		service.deleteEmployee(id);
		
		return "redirect:/show-employees";
	}
	

}
