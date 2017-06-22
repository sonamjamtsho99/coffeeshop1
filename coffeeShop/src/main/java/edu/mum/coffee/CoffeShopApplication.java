package edu.mum.coffee;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.client.RestTemplate;

import edu.mum.coffee.domain.Product;

@SpringBootApplication
public class CoffeShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(CoffeShopApplication.class, args);
		
		RestTemplate restTemplate = new RestTemplate();
		Product product = restTemplate.getForObject("http://localhost:8080/product/{id}", Product.class, 8);
		System.out.println("Product ID: " + product.getId());
		System.out.println("Product Name: " + product.getProductName());
		System.out.println("Description: " + product.getDescription());
		System.out.println("Product Type: " + product.getProductType());
	}
}