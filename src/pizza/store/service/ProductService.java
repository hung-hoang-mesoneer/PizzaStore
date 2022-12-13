package pizza.store.service;

import java.util.List;
import java.util.stream.Collectors;

import pizza.store.ProductType;
import pizza.store.init.InitData;
import pizza.store.model.Product;

public class ProductService {

	public static List<Product> getPizzas() {
		return InitData.products.stream()
				.filter(item -> item.getType().equals(ProductType.PIZZA))
				.collect(Collectors.toList());
	}

	public static List<Product> getDrinks() {
		return InitData.products.stream()
				.filter(item -> item.getType().equals(ProductType.DRINK))
				.collect(Collectors.toList());
	}

}
