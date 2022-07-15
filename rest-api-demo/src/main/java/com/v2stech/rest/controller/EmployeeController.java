package com.v2stech.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.v2stech.rest.exception.ResourceNotFoundException;
import com.v2stech.rest.model.Employee;
import com.v2stech.rest.service.EmployeeService;

@RestController
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/Home")
	public ModelAndView getAllData() {
		return new ModelAndView("/WEB-INF/views/firstPage.jsp");
	}

	
	@RequestMapping("/employees")
	public List<Employee> getEmployees() {
		return employeeService.getEmployees();
	}

	@RequestMapping("/employees/{empid}")
	public Employee getEmployee(@PathVariable("empid") String id) throws ResourceNotFoundException {
		return employeeService.getEmployee(id);
	}

	@PostMapping("/employees")
	public void addEmployee(@RequestBody Employee employee) {
		employeeService.addEmployee(employee);
	}

	@PutMapping("/employees/{id}")
	public void updateEmployee(@RequestBody Employee employee, @PathVariable String id) {
		employeeService.updateEmployee(employee, id);
	}

	@DeleteMapping(value = "/employees/{id}")
	public void deleteEmployee(@PathVariable String id) {
		employeeService.deleteEmployee(id);
	}
}
