package com.example.project.EmployeeProject.Service;

import com.example.project.EmployeeProject.Entity.Employee;
import com.example.project.EmployeeProject.Repository.EmployeeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class EmployeeService {
    @Autowired
    private EmployeeRepo employeeRepo;
    public Employee addEmployee(Employee employee){
      return   employeeRepo.save(employee);
    }
    public List<Employee> getAllEmployees() {

        return  employeeRepo.findAll();
    }
    public Employee searchEmployee(int id){
        Employee emp = employeeRepo.findById(id).orElse(null);
        return emp;
    }
    public boolean deleteEmployee(int id){
        Employee emp=employeeRepo.findById(id).orElse(null);
        if(emp==null){
            return false;
        }
        else {
             employeeRepo.delete(emp);
             return true;
        }
    }
    public Employee updateEmployee(Employee emp,int id) {
        Employee employee = employeeRepo.findById(id).orElse(null);
        if(employee!=null){
            return employeeRepo.save(emp);
        }
        else {
            return null;
        }
    }

}
