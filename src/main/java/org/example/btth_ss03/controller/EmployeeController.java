package org.example.btth_ss03.controller;

import org.example.btth_ss03.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {
    @RequestMapping("/employees")
    public String getAllEmployees(Model model) {

        List<Employee> employees = new ArrayList<>();
        employees.add(new Employee(1, "Employee001", "A", 10000000.0));
        employees.add(new Employee(2, "Employee002", "B", 9000000.0));
        employees.add(new Employee(3, "Employee003", "A", 12000000.0));
        employees.add(new Employee(4, "Employee004", "C", 15000000.0));

        model.addAttribute("employees", employees);

        return "employees";
    }
}

