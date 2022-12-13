package pizza.store.init;

import java.util.ArrayList;
import java.util.List;

import pizza.store.ProductType;
import pizza.store.dto.OrderDTO;
import pizza.store.model.Order;
import pizza.store.model.Product;

public class InitData {
	public static List<Order> orders = null;
	
	public static List<OrderDTO> ordersDTO = null;

	public static List<Product> products = new ArrayList<Product>() {
		{
			add(new Product(1, "Pizza Hai San", 5, "pizza1.jpg",
					ProductType.PIZZA));
			add(new Product(2, "Pizza Cocktail", 10, "pizza2.jpg",
					ProductType.PIZZA));
			add(new Product(3, "Pizza New York", 12, "pizza3.jpg",
					ProductType.PIZZA));
			add(new Product(4, "Pizza Phomai", 17, "pizza4.jpg",
					ProductType.PIZZA));
			add(new Product(5, "Pizza Tomato", 20, "pizza5.jpg",
					ProductType.PIZZA));
			add(new Product(6, "Pizza breef", 36, "pizza6.jpg",
					ProductType.PIZZA));
			add(new Product(7, "Tra Sua 1", 5, "drink1.jpg", 
					ProductType.DRINK));
			add(new Product(8, "Tra Sua 2", 10, "drink2.jpg", 
					ProductType.DRINK));
			add(new Product(9, "Pizza New York", 12, "drink3.jpg",
					ProductType.DRINK));
			add(new Product(10, "Pizza Phomai", 17, "drink4.jpg",
					ProductType.DRINK));
			add(new Product(11, "Pizza Tomato", 20, "drink5.jpg",
					ProductType.DRINK));
			add(new Product(12, "Pizza breef", 36, "drink6.jpg",
					ProductType.DRINK));
		}
	};
}
