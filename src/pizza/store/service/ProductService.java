package pizza.store.service;

import java.util.ArrayList;
import java.util.List;

import pizza.store.model.Product;

public class ProductService {

	public static List<Product> getPizzas() {
		List<Product> products = new ArrayList<>();
		products.add(new Product("Pizza Hai San", 5, "pizza1.jpg"));
		products.add(new Product("Pizza Cocktail", 10, "pizza2.jpg"));
		products.add(new Product("Pizza New York", 12, "pizza3.jpg"));
		products.add(new Product("Pizza Phomai", 17, "pizza4.jpg"));
		products.add(new Product("Pizza Tomato", 20, "pizza5.jpg"));
		products.add(new Product("Pizza breef", 36, "pizza6.jpg"));

		return products;
	}
	
	public static List<Product> getDrinks() {
		List<Product> products = new ArrayList<>();
		products.add(new Product("Tra Sua 1", 5, "drink1.jpg"));
		products.add(new Product("Tra Sua 2", 10, "drink2.jpg"));
		products.add(new Product("Pizza New York", 12, "drink3.jpg"));
		products.add(new Product("Pizza Phomai", 17, "drink4.jpg"));
		products.add(new Product("Pizza Tomato", 20, "drink5.jpg"));
		products.add(new Product("Pizza breef", 36, "drink6.jpg"));

		return products;
	}
}
