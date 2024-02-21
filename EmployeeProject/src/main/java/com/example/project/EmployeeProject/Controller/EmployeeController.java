package com.example.project.EmployeeProject.Controller;

import com.example.project.EmployeeProject.Entity.Employee;
import com.example.project.EmployeeProject.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService service;
    @RequestMapping("/welcome")
    public String start(){

        return "welcome";
    }

    @RequestMapping("/add")
    public String addEmp(){

        return "addEmployee";
    }
    @RequestMapping("/addedEmployee")
    public String addEmployee(Employee employee, ModelMap model){
        Employee empl= service.addEmployee(employee);
        System.out.println(empl);
        model.addAttribute("employee",empl);
        return "addedResult";
    }
    @RequestMapping("/addedResult")
    public String addedEmployee(){

        return "addedResult";
    }
    @RequestMapping("/viewEmployee")
    public String viewEmployee(Model model){
        ArrayList<Employee> employeeList = (ArrayList<Employee>) service.getAllEmployees();
        model.addAttribute("EmployeeList",employeeList);
        System.out.println(employeeList);
        return "viewEmployee";
    }
    @RequestMapping("/searchEmployee")
    public String searchEmp(){

        return "searchEmployee";
    }

    @RequestMapping("/searchEmp")
    public String searchEmployee(@RequestParam("EmpId") int id, ModelMap model){
        model.addAttribute("searchEmployee",service.searchEmployee(id));
        return "searchEmployeeDone";
    }
    @RequestMapping("/deleteEmployee")
    public String deleteEmp(){
        return "deleteEmployee";
    }
   @RequestMapping("/deleteEmployeeDone")
    public String deleteEmployee(@RequestParam("empId") int id,ModelMap model){
        boolean isDeleted=service.deleteEmployee(id);
        System.out.println(isDeleted);
        if(isDeleted) {
            ArrayList<Employee> updatedEmployeeList = (ArrayList<Employee>) service.getAllEmployees();
        }
        model.addAttribute("deleteEmployee", isDeleted);
        return "deleteEmployeeDone";
    }
    @RequestMapping("/update")
    public String updateEmp(){
        return "updateEmployee";
    }
    @RequestMapping("/updateEmployee")
    public String updateEmployee(Employee employee,ModelMap model) {
//        Employee employee = new Employee(EmpId,EmployeeFirstName,EmployeeLastName,role);
        System.out.println(employee);
        Employee emp=service.updateEmployee(employee,employee.getEmpId());
        model.addAttribute("employee",emp);
        return "updateEmployeeDone";
    }
    @RequestMapping("/updateEmployeeDone")
    public String updatedEmployee() {
        return "viewEmployee";
    }
}
