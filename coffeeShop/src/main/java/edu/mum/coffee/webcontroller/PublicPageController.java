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

import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

@Controller
@RequestMapping("/public")
public class PublicPageController {

	@Autowired
	private ProductService productService;
	
	@Autowired 
	private PersonService personService;
	

	@GetMapping("/")
	public String homePage() {
		return "homepage";
	}

	@GetMapping(path = "/listproducts")
	public String listProductPage(Model model) {
		List<Product> product = productService.getAllProduct();
		model.addAttribute("products", productService.getAllProduct());
		return "listproducts";
	}
	
	@GetMapping("/signup")
	public ModelAndView addPerson() {
		ModelAndView modelAndView = new ModelAndView("signup");
		Person person = new Person();
		modelAndView.addObject(person);
		return modelAndView;
	}
	
	@PostMapping("/addPerson")
	public String addPerson(@ModelAttribute(value = "person") Person person) {
		personService.savePerson(person);
		return "redirect:/user/";
	}

}
