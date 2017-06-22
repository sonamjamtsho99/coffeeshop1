package edu.mum.coffee.webcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.mum.coffee.domain.Order;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminPageController {
	
	@Autowired
	private PersonService personService;
	
	@Autowired 
	private OrderService orderService;
	
	@Autowired 
	private ProductService productService;
	
	@GetMapping({ "/" })
	public String homePage() {
		return "adminpage";
	}
	
	@GetMapping("/createperson")
	public ModelAndView addPerson() {
		ModelAndView modelAndView = new ModelAndView("createperson");
		Person person = new Person();
		modelAndView.addObject(person);
		return modelAndView;
	}
	
	@PostMapping("/addPerson")
	public String addPerson(@ModelAttribute(value = "person") Person person) {
		personService.savePerson(person);
		return "redirect:/admin/";
	}
	
	@GetMapping("/listperson")
	public String listPerson(Model model) {
		List<Person> person = personService.findAll();
		model.addAttribute("persons", personService.findAll());
		return "listperson";
	}
	
	
	
	@GetMapping("/listorder")
	public String listOrder(Model model) {
		List<Order> order = orderService.findAll();
		model.addAttribute("orders", orderService.findAll());
		return "listorder";
	}
	
	@GetMapping("/createproduct")
	public ModelAndView createProduct() {
		ModelAndView modelAndView = new ModelAndView("createproduct");
		Product product= new Product();
		modelAndView.addObject(product);
		return modelAndView;
	}
	
	@PostMapping("/addProduct")
	public String addProduct(@ModelAttribute(value = "product") Product product) {
		productService.save(product);
		return "redirect:/admin/";
	}
	
	/*@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public ModelAndView loginPage(@RequestParam(value = "error",required = false) String error,
	@RequestParam(value = "logout",	required = false) String logout) {
		
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid Credentials provided.");
		}

		if (logout != null) {
			model.addObject("message", "Logged out from JournalDEV successfully.");
		}

		model.setViewName("loginPage");
		return model;
	}*/
	
}
