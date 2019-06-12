package com.dapp.example.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.dapp.example.model.Employee;
import com.dapp.example.repository.EmployeeRepository;

@Service
@Transactional
public class EmployeeService {

	private final EmployeeRepository employeerepository;
	
	public EmployeeService (EmployeeRepository employeeRepository)
	{
		this.employeerepository = employeeRepository;
	}
	
	
	public void saveEmployee(Employee employee)
	{
		employeerepository.save(employee);
	}
	
	
	
	public List<Employee> showAllEmployees()
	{

		List<Employee> employees = new ArrayList<Employee>();
		
		for (Employee employee:employeerepository.findAll())
		{
			employees.add(employee);
		}
		
		return employees;
	}
	
	
	public void deleteEmployee(int id)
	{
		employeerepository.deleteById(id);
	}
	
	public Employee editEmployee(int id)
	{
		return employeerepository.findById(id).get();
	}
	
	
	
}
