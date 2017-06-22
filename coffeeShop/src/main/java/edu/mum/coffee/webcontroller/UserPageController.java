package edu.mum.coffee.webcontroller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.mum.coffee.domain.Order;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.PersonService;

@Controller
@RequestMapping("/user")
public class UserPageController {
	
	@Autowired
	private PersonService personService;
	@Autowired
	private OrderService orderService;
	
	@GetMapping("/")
	public String homePage() {
		return "userpage";
	}

	@GetMapping({ "/placeOrder" })
	public ModelAndView createProductPage() {
		ModelAndView modelAndView = new ModelAndView("placeOrder");
		Order order = new Order();
		order.setOrderDate(new Date());
		modelAndView.addObject(order);
		return modelAndView;
	}

	@PostMapping("/saveOrder")
	public String saveProductPage(@ModelAttribute(value = "order") Order order) {
		orderService.save(order);
		return "redirect:/user";
	}
	
	@GetMapping("/updateProfile")
	public String updateProfile() {
		return "listbyemail";
	}
	
	 @GetMapping("/getProfile")
	    public String getProfile(@RequestParam("id") String id,Model model) {
		 Long longId = Long.valueOf(id);
		 Person person = personService.findById(longId);
		 model.addAttribute(person);
		 return  "getProfile";
		}
	 
	 @PostMapping("/saveUpdate") 
	 public String saveUpdate(@ModelAttribute(value = "profile") Person person) {
			personService.savePerson(person);
			return "redirect:/user/";
		}
	 


}
