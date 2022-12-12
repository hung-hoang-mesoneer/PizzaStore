package pizza.store.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import pizza.store.ProductType;
import pizza.store.StatusOrder;
import pizza.store.model.Order;
import pizza.store.model.Product;

public class ProductService {

	public static List<Order> orders = new ArrayList<Order>();
	
	public static List<Product> getPizzas() {
		List<Product> products = new ArrayList<>();
		products.add(new Product(1, "Pizza Hai San", 5, "pizza1.jpg",
				ProductType.PIZZA));
		products.add(new Product(2, "Pizza Cocktail", 10, "pizza2.jpg",
				ProductType.PIZZA));
		products.add(new Product(3, "Pizza New York", 12, "pizza3.jpg",
				ProductType.PIZZA));
		products.add(new Product(4, "Pizza Phomai", 17, "pizza4.jpg",
				ProductType.PIZZA));
		products.add(new Product(5, "Pizza Tomato", 20, "pizza5.jpg",
				ProductType.PIZZA));
		products.add(new Product(6, "Pizza breef", 36, "pizza6.jpg",
				ProductType.PIZZA));

		return products;
	}

	public static List<Product> getDrinks() {
		List<Product> products = new ArrayList<>();
		products.add(new Product(7, "Tra Sua 1", 5, "drink1.jpg",
				ProductType.DRINK));
		products.add(new Product(8, "Tra Sua 2", 10, "drink2.jpg",
				ProductType.DRINK));
		products.add(new Product(9, "Pizza New York", 12, "drink3.jpg",
				ProductType.DRINK));
		products.add(new Product(10, "Pizza Phomai", 17, "drink4.jpg",
				ProductType.DRINK));
		products.add(new Product(11, "Pizza Tomato", 20, "drink5.jpg",
				ProductType.DRINK));
		products.add(new Product(12, "Pizza breef", 36, "drink6.jpg",
				ProductType.DRINK));

		return products;
	}

	public static void createOrder(Order order) {
		String orderId = UUID.randomUUID().toString();
		order.setOrderId(orderId);
		order.setStatus(StatusOrder.PENDING);
		order.setDate(new Date());
		orders.add(order);
	}

	public static List<Order> getOrders() {
		return orders;
	}
}
