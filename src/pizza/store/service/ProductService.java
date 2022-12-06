package pizza.store.service;

import java.util.ArrayList;
import java.util.List;

import pizza.store.model.Product;

public class ProductService {

	public static List<Product> getProducts() {
		List<Product> products = new ArrayList<>();
		products.add(new Product("Pizza Hai San", 5));
		products.add(new Product("Pizza Cocktail", 5));
		products.add(new Product("Pizza New York", 5));
		products.add(new Product("Pizza Phomai", 5));
		products.add(new Product("Pizza Tomato", 5));
		products.add(new Product("Pizza breef", 5));

		return products;
	}
}
