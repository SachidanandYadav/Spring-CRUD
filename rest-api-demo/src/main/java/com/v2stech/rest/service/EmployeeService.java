package com.v2stech.rest.service;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.v2stech.rest.exception.ResourceNotFoundException;
import com.v2stech.rest.model.Employee;

@Service
public class EmployeeService {

	List<Employee> employeeList = new LinkedList<Employee>(Arrays.asList(new Employee("1", "Peter Parker", "New York"),
			new Employee("2", "Bruce Wayne", "Gotham City"), new Employee("3", "Clark Kent", "Metropolis"),
			new Employee("4", "T'Challa", "Wakanda"), new Employee("5", "Tony Stark", "New York")));

	
	public List<Employee> getEmployees() {
		return employeeList;
	}

	public Employee getEmployee(String id) throws ResourceNotFoundException   {
		for (Employee emp : employeeList) {
			if (emp.getId().equals(id)) {
				return emp;
			}
		}
		throw new ResourceNotFoundException("Element Not Found");
	}

	public void addEmployee(Employee employee) {
		employeeList.add(employee);
	}

	public void updateEmployee(Employee employee, String id) {
		for (int i = 0; i < employeeList.size(); i++) {
			Employee e = employeeList.get(i);
			if (e.getId().equals(id)) {
				employeeList.set(i, employee);
				break;
			}
		}
	}

	public void deleteEmployee(String id) {
		for (Employee emp : employeeList) {
			if (emp.getId().equals(id)) {
				employeeList.remove(emp);
				break;
			}
		}
	}

}