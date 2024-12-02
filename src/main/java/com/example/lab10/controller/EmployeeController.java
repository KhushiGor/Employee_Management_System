package com.example.lab10.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import com.example.lab10.model.Employee;

import java.util.ArrayList;
import java.util.List;


@Controller

//@RequestMapping("/employees")
@WebServlet("/employee-list")
public class EmployeeController extends HttpServlet{

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // Add any necessary logic here
	        request.getRequestDispatcher("/WEB-INF/view/employee-list.jsp").forward(request, response);
	    }
	
	
private List<Employee> employeelist = new ArrayList<>();

@GetMapping

public String listEmployees (Model model) { 
	model.addAttribute("employees", employeelist); 
	return "employee-list";
}

@GetMapping("/add")

public String showAddForm (Model model) { 
	model.addAttribute("employees", new Employee()); 
	return "employee-form";
}

@PostMapping("/add")
public String addEmployee (@Validated @ModelAttribute("employee") Employee employee, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "employee-form";

}

	employee.setId(employeelist.size() + 1);
	employeelist.add(employee);
	return "redirect:/employees";
}



@GetMapping("/edit/{id}")

public String showEditForm(@PathVariable int id, Model model) {

	Employee employee = employeelist.stream().filter(emp -> emp.getId() == id).findFirst().orElse(null);

	model.addAttribute("employee", employee);

	return "employee-form";
}
@PostMapping("/edit/{id}")
public String editEmployee(@PathVariable int id,@Validated @ModelAttribute("employee")Employee employee, BindingResult result, Model model) {
Employee employee1 = employeelist.stream().filter(emp -> emp.getId() == id).findFirst().orElse(null);

model.addAttribute("employee", employee1);

return "employee-form";

}

@GetMapping("/delete/{id}")
 
public String deleteEmployee(@PathVariable int id) {
	employeelist.removeIf(emp -> emp.getId() == id);
	return "redirect:/employees";
}
}
