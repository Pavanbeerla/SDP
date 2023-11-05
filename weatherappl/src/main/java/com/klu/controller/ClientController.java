package com.klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.model.Customer;
import com.klu.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ClientController 
{
  @Autowired
  CustomerService cs;
  
  
  
  @GetMapping("/")
  public String main() {
    return "index";
  }
  
  @GetMapping("login")
  public String login_page() {
    return "login";
  }
  
  @PostMapping("checklogin")
  public ModelAndView checkLogin(HttpServletRequest req) {
    ModelAndView mv=new ModelAndView();
    String email=req.getParameter("email");
    String password=req.getParameter("password");
    Customer c=cs.checkCustomerLogin(email, password);
    if(c!=null) {
      mv.setViewName("userhome");
    }
    else {
      mv.setViewName("login");
      mv.addObject("message","Login Failed");
    }
    return mv;
  }
  
  @GetMapping("registration")
  public String registration_page() {
    return "registration";
  }
  
  @PostMapping("insertcust")
  public ModelAndView insertcustomer(HttpServletRequest req) {
    
    ModelAndView mv=new ModelAndView();
    String msg=null;
    try {
      String cname=req.getParameter("name");
      String cemail=req.getParameter("email");
      String cpassword=req.getParameter("password");
      String ccontactno=req.getParameter("contactno");
      String cgender=req.getParameter("gender");
      
      Customer c=new Customer();
      c.setName(cname);
      c.setEmail(cemail);
      c.setPassword(cpassword);
      c.setContactno(ccontactno);
      c.setGender(cgender);
      
      msg=cs.addCustomer(c);
      mv.setViewName("registration");
      mv.addObject("message",msg);
    }catch(Exception e) {
      msg="Customer Registration Not Successfull";
      mv.setViewName("registration");
      mv.addObject("message",msg);
    }
    return mv;
  }
}