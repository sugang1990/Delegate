package com.jlxy.graduationDesin.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.caucho.server.http.HttpRequest;
import com.jlxy.graduationDesin.component.ParameterComponent;
import com.jlxy.graduationDesin.model.Employee;
import com.jlxy.graduationDesin.service.EmployeeService;

@Controller
/*@SessionAttributes(value = "loginEmployee")*/
@RequestMapping(value = "/employee")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private ParameterComponent parameterComponent;
	 
	public EmployeeController() {
	}
	
	@RequestMapping(value="/login")
	public String login(Model model){
		String randomNumsList=parameterComponent.getRandomNum(4);
		model.addAttribute("randomNumbers", randomNumsList);
		return "login";
	}
	
	@RequestMapping(value="/result")
	public String result(Employee employee,Model model){
		if(!employee.getPassword().equals(employee.getPasswordConfirm())){
			model.addAttribute("message", "password conflicts!");
			String randomNumsList=parameterComponent.getRandomNum(4);
			model.addAttribute("randomNumbers", randomNumsList);
			return "login";
		}
		boolean isMember=employeeService.isMember(employee);
		if(isMember){
			return "welcome";
		}
		return "login";
	}
	

	@RequestMapping(value = "/checkUser")
	public String checkUser(Model model){
		List<Employee> unckeckEmployees=employeeService.getEmployees(1);
		model.addAttribute("unckeckEmployees", unckeckEmployees);
		return "checkUser";
	}
	@RequestMapping(value = "/deleteUser")
	public String deleteUser(HttpRequest httpRequest,Model model){
		String name=httpRequest.getParameter("userName");
		Employee employee =new Employee();
		employee.setName(name);
		employeeService.deleteEmployee(employee);
		getWorkers(model);
		return "getWorkers";
	}
	@RequestMapping(value = "/addUser")
	public String addUser(){
		return "addUser";
	}
	
	
	@RequestMapping(value = "/submit")
	public String submit(Employee employee,Model model){
		employeeService.updateEmployee(employee);
		getWorkers(model);
		return "getWorkers";
		
	}
	@RequestMapping(value = "/updateUser")
	public String updateUser(Model model){
		return "updateUser";
	}
	@RequestMapping(value = "/admin")
	public String admin(){
		return "admin";
	}
	@RequestMapping(value = "/getUsers")
	public String getUsers(){
		return "getUsers";
	}
	@RequestMapping(value = "/getDepartments")
	public String getDepartments(){
		return "getDepartments";
	}
	
	@RequestMapping(value = "/addDepartment")
	public String addDepartment(){
		return "addDepartment";
	}
	@RequestMapping(value = "/updateDepart")
	public String updateDepart(){
		return "updateDepart";
	}
	
	@RequestMapping(value = "/deleteDepartment")
	public String deleteDepartment(){
		return "deleteDepartment";
	}


	@RequestMapping(value = "/deleteSubmit")
	public String deleteSub(Model model,Employee employee){
		employeeService.deleteEmployee(employee);
		getWorkers(model);
		return "getWorkers";
	}
	
	@RequestMapping(value = "/getWorkers")
	public String getWorkers(Model model){
		List<Employee> allEmployees=employeeService.getAllEmployees();	
		model.addAttribute("allEmployees", allEmployees);
		return "getWorkers";
	}
	
	@RequestMapping(value = "/departmentInfo")
	public String departmentInfo(){
		return "departmentInfo";
	}
	
	@RequestMapping(value = "/deleteWorker")
	public String deleteWorker(){
		
		return "deleteWorker";
	}
	
	@RequestMapping(value = "/updateWorker1")
	public String updateWorker1(){
		return "updateWorker1";
	}
	
	@RequestMapping(value = "/adjustSalary")
	public String adjustSalary(){
		return "adjustSalary";
	}
	
	@RequestMapping(value = "/addWorker")
	public String addWorker(){
		return "addWorker";
	}
	@RequestMapping(value = "/addWorkerSubmit")
	public String add(Employee employee,Model model){
		employeeService.indsertEmployee(employee);
		getWorkers(model);
		return "getWorkers";
	}
	
	@RequestMapping(value = "/adjustWorker")
	public String adjustWorker(){
		return "adjustWorker";
	}
	
	
//	public String list(Model model) {
//
//		List<Employee> employees = (List<Employee>) serviceEmployee.selectAll();
//		model.addAttribute("employees", employees);
//		// System.out.println(employees.size());
//		return "employees/list";
//	}
//
//	@RequestMapping(value = "/add", method = RequestMethod.GET)
//	public String add(Model model) {
//		model.addAttribute(new Employee());
//
//		return "employees/add";
//	}
//
//	@RequestMapping(value = "/add", method = RequestMethod.POST)
//	public String add(@Valid Employee employee, BindingResult bind) {
//		if (bind.hasErrors()) {
//			return "/employees/add";
//		}
//
//		employees.put(employee.getEmployeeName(), employee);
//		return InternalResourceViewResolver.REDIRECT_URL_PREFIX
//				+ "/employee/employees";
//
//	}
//
//	// {name}表示这个name是一个变量，它与下面的PathVariable String name表示的都是路径变量
//	@RequestMapping(value = "/{name}", method = RequestMethod.GET)
//	public String show(@PathVariable String name, Model model) {
//		model.addAttribute(employees.get(name));
//		return "user/show";
//	}
//
//	@RequestMapping(value = "/{name}/update", method = RequestMethod.GET)
//	public String update(@PathVariable String name, Model model) {
//
//		model.addAttribute(employees.get(name));
//
//		return "/employee/employees";
//
//	}
//
//	@RequestMapping(value = "/{name}/update", method = RequestMethod.POST)
//	// bindingresult 参数一定要在@valid User user 后面
//	public String update(@PathVariable String name, @Valid Employee employee,
//			BindingResult bindingResult) {
//		if (bindingResult.hasErrors()) {
//			return "employe/update";
//		}
//		employees.put(name, employee);// Map中Key不能重复，因此会删除原来的name
//		// 做操作就不能返回一个视图，是因为需要更新users,而users对应的方法里面有model.addAttribute("users",
//		// users);来传递最新的users
//		// 而什么叫最新的users，其实就是通过客户端从新发送的一个新的request请求，然后内存中的这个users已经得到了保存在内存中
//		return "redirect:/employee/employees";
//
//	}
//
//	@RequestMapping(value = "{name}/delete", method = RequestMethod.GET)
//	public String delete(@PathVariable String name) {
//		employees.remove(name);
//		return "redirect:/employee/employees";
//
//	}

	// @ResponseBody
	// @RequestMapping(value="/{name}",params="json")
	// public Employee showJson(@PathVariable String name) {
	// System.out.println(name);
	//
	// return (Employee) employees.get(name);
	//
	// }

	// @RequestMapping(value="/login",method=RequestMethod.GET)
	// public String login() {
	//
	// return "employee/login";
	// }
	// @RequestMapping(value="/login",method=RequestMethod.POST)
	// public String login(String name,String password,Model model) {
	// if(!employees.containsKey(name)){
	// throw new UserException("用户名不存在。");
	//
	// }
	// if(!password.equals(((Employee)employees.get(name)))){
	// throw new UserException("密码不正确");
	// }
	// model.addAttribute("loginUser", name);
	//
	//
	// return "redirect:/user/users";
	//
	// }

	// 这个是用来捕获异常的，指定要捕获的异常的类型
//	@ExceptionHandler(value = { EmployeeException.class })
//	public String handlerException(Exception ex,
//			HttpServletRequest httpServletRequest) {
//
//		httpServletRequest.setAttribute("ex", ex);
//
//		return "user/error";
//
//	}

}
