package com.niit.controller;


import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDao;
import com.niit.dao.CategoryDao;
import com.niit.dao.OrderDetailsDao;
import com.niit.dao.ProductDao;
import com.niit.dao.SupplierDao;
import com.niit.dao.UserDao;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.User;





@Controller
public class IndexController {
	@Autowired
	UserDao userDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	SupplierDao supplierDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	CartDao cartDao;
	@Autowired
	OrderDetailsDao orderDetailsDao;

	
	@RequestMapping(value="index") 
	public String index(Model model) { 
		model.addAttribute("category", new Category()); 
		model.addAttribute("supplier", new Supplier()); 
		model.addAttribute("product", new Product()); 
		
		model.addAttribute("supplist", supplierDao.retrieve());
		model.addAttribute("catlist", categoryDao.retrieve());
		model.addAttribute("prodList", productDao.retrieve());
		return "index"; 
	}
	
	
	@RequestMapping(value="/") 
	public String home(Model model) { 
		model.addAttribute("category", new Category()); 
		model.addAttribute("supplier", new Supplier()); 
		model.addAttribute("product", new Product()); 
		
		model.addAttribute("supplist", supplierDao.retrieve());
		model.addAttribute("catlist", categoryDao.retrieve());
		model.addAttribute("prodList", productDao.retrieve());
		return "index"; 
	}
	
	
	
	
	@RequestMapping(value="/goToRegister", method=RequestMethod.GET)
	public ModelAndView showRegister()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("catlist", categoryDao.retrieve());
		mv.setViewName("register");
		return mv;
	}
	
	@RequestMapping("/goToLogin")
	public ModelAndView login()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("catlist", categoryDao.retrieve());
		mv.setViewName("login");
		return mv;
	}

	@RequestMapping("/Contact Us")
	public ModelAndView ContactUs()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("catlist", categoryDao.retrieve());
		mv.setViewName("ContactUs");
		return mv;
		
	}

	@RequestMapping("/About Us")
	public ModelAndView AboutUs()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("catlist", categoryDao.retrieve());
		mv.setViewName("AboutUs");
		return mv;
	
	}
	
	@RequestMapping("login")
	public ModelAndView login(@RequestParam(value="id",required=false) String id)
	{	ModelAndView m=new ModelAndView("login");
		if(id!=null){
		if(id.equals("1"))
			m.addObject("msg","Invalid Username or Password");
		else if(id.equals("2"))
			m.addObject("msg1","You've been logged out");
		else if(id.equals("3"))
			m.addObject("msg","Your Account has been Deactivated");		
		}
		return m;	
	}
	
	@RequestMapping(value="/login_success",method=RequestMethod.POST)
	public String loginsuccess(@RequestParam Map<String,String> user,HttpSession session)
	{ 
		String username= SecurityContextHolder.getContext().getAuthentication().getName();
		System.out.println(username);
		String name = userDao.getUserName(username);
		String address = userDao.getUserAddress(username);
		String phone = userDao.getUserPhone(username);
		System.out.println(address);
		System.out.println(phone);
		User userDetails=userDao.getUser(user.get("username"));
		userDetails.setEnabled(true);
		userDao.insertOrUpdateUser(userDetails);
		session.setAttribute("username",username);
		session.setAttribute("address", address);
		session.setAttribute("phone", phone);
		session.setAttribute("name", name);
		session.setAttribute("usertitle",name.charAt(0));
		session.setAttribute("loggedIn",true);
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities =(Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		for(GrantedAuthority role:authorities)
		{
			System.out.println("Role:"+role.getAuthority()+"username"+username);
			if(role.getAuthority().equals("ROLE_ADMIN"))
				session.setAttribute("user",null);
			else
				session.setAttribute("user","user");
			}
		return "redirect:index";
	}

	
	
	@RequestMapping(value="/addUserDetails",method=RequestMethod.POST)
	public ModelAndView addProduct(@RequestParam Map<String,String> user,@RequestParam("phone") String phone)
	{	ModelAndView m=new ModelAndView();
		User userDetails=userDao.getUser(user.get("username"));
		if(userDetails!=null&&userDetails.isEnabled()==true){
		m.addObject("userExist","Username Already Exist");
		m.setViewName("Register");
		}
		else{
		userDetails =new User();
		userDetails.setAddress(user.get("address"));
		userDetails.setEmail(user.get("email"));
		userDetails.setName(user.get("username"));
		userDetails.setPassword(user.get("password"));
		userDetails.setPhone(phone);
		userDetails.setEnabled(true);
		userDetails.setRole("ROLE_USER");
		userDao.insertOrUpdateUser(userDetails);
		m.addObject("userCreate","Account Created");
		m.setViewName("index");
		}
		return m;
	}
	
	
	
	
	@RequestMapping("/userLogged")
	public String userLogged()
	{
		return "redirect:/index";
	}
	
	@RequestMapping("/error")
	public String userError()
	{
		return "/error";
	}
	
	@RequestMapping("/reLogin")
	public String reLogin()
	{
		return "redirect:/goToLogin";
	}
	
	
	
	@RequestMapping("viewProducts")
	public ModelAndView showProducts(@RequestParam("cat_id") int cid)
	{
		System.out.println("Shop By Category");
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodList", productDao.getProductByCatID(cid));
		mv.addObject("catlist", categoryDao.retrieve());
		mv.addObject("catId", categoryDao.getCategory(cid));
		mv.setViewName("proCategory");
		return mv; 
	}
	
	@RequestMapping("productDetails")
	public ModelAndView showProductDetails(@RequestParam("pro_id") int pid)
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("prod", productDao.getProduct(pid));
		mv.addObject("catlist", categoryDao.retrieve());
		mv.setViewName("prodDetails");
		return mv; 
	}
	
	
	@RequestMapping("allProducts")
	public ModelAndView showAllProducts()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("supplist", supplierDao.retrieve());
		mv.addObject("catlist", categoryDao.retrieve());
		mv.addObject("prodList", productDao.retrieve());
		mv.setViewName("allProducts");
		return mv; 
	}
	
	

	@RequestMapping("myAccount")
	public ModelAndView shoeAccount()
	{
		ModelAndView mv = new ModelAndView();
		
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		mv.addObject("supplist", supplierDao.retrieve());
		mv.addObject("catlist", categoryDao.retrieve());
		mv.addObject("prodList", productDao.retrieve());
		mv.addObject("user", userDao.getUser(email));
		mv.setViewName("myAccount");
		return mv; 
	}
	
	
	@RequestMapping(value="/updateUser",method=RequestMethod.POST)
	public ModelAndView updateUser(@RequestParam Map<String,String> user,HttpSession session)
	{	ModelAndView m=new ModelAndView("redirect:myAccount");
		String username=(String)session.getAttribute("username");
		User userDetails=userDao.getUser(username);
		if(user.get("name")!=null)
		userDetails.setName(user.get("name"));
		if(user.get("address")!=null)
		userDetails.setAddress(user.get("address"));
		if(user.get("phone")!=null)
		userDetails.setPhone(user.get("phone"));	
		userDao.insertOrUpdateUser(userDetails);
		
		String name = userDao.getUserName(username);
		session.setAttribute("name", name);
		
		
		return m;
	}
	
	
	@RequestMapping(value="/changePass")
	public ModelAndView changePass(@RequestParam("currentPass") String cPass,@RequestParam("newPass") String nPass,HttpSession session)
	{	ModelAndView m=new ModelAndView("myAccount");
		String user=(String)session.getAttribute("username");
		User userDetails=userDao.getUser(user);	
		if(cPass.equals(userDetails.getPassword())){
			userDetails.setPassword(nPass);
			userDao.insertOrUpdateUser(userDetails);
			m.addObject("info","password changed successfully");
		}
		else{
			m.addObject("info","Error while changing password");	
		}
		m.addObject("user",userDetails);
		return m;
	}
	
	
	
	
	@RequestMapping(value="/deactivateAccount")
	public String deactivateAccount(HttpSession session)
	{	String user=(String)session.getAttribute("username");
		User userDetails=userDao.getUser(user);	
		userDetails.setEnabled(false);
		userDao.insertOrUpdateUser(userDetails);
		List<Cart> cartList=cartDao.findByCartId(user);
		if(!cartList.isEmpty())
			for(Cart cart:cartList)
				cartDao.deleteCart(cart.getCartId());
		cartList=cartDao.getPurchasedProducts(user);
		if(!cartList.isEmpty())
			for(Cart cart:cartList)
				cartDao.deleteCart(cart.getCartId());
		System.out.println("CartDeleted");
		orderDetailsDao.deleteOrderDetails(user);
		session.invalidate();
		return "redirect:login?id=3";
	}
	
	
	
	
}
