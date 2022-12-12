package pizza.store.service;

import static pizza.store.converter.ProductConverter.toProductDTOs;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import pizza.store.ProductType;
import pizza.store.StatusOrder;
import pizza.store.dto.OrderDTO;
import pizza.store.init.InitData;
import pizza.store.model.Order;
import pizza.store.model.Product;
import pizza.store.utils.DateUtils;

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

	public static void createOrder(Order order) {
		int orderId = 1;
		if (!InitData.orders.isEmpty()) {
			orderId = InitData.orders.stream()
					.max(Comparator.comparing(Order::getOrderId)).get()
					.getOrderId();
		}
		order.setOrderId(orderId);
		order.setStatus(StatusOrder.PENDING);
		order.setDate(new Date());
		InitData.orders.add(order);
	}

	public static List<OrderDTO> getOrders() {
		List<OrderDTO> result = new ArrayList<>(InitData.orders.size());
		if (!InitData.orders.isEmpty()) {
			OrderDTO orderDTO = null;
			for (Order order : InitData.orders) {
				orderDTO = new OrderDTO();
				orderDTO.setOrderId(order.getOrderId());
				orderDTO.setName(order.getName());
				orderDTO.setPhone(order.getPhone());
				orderDTO.setDeliveryTo(order.getDeliveryTo());
				orderDTO.setStatus(order.getStatus());
				orderDTO.setDate(DateUtils.convertDate(order.getDate()));
				orderDTO.setProducts(toProductDTOs(order.getProductIds()));
				orderDTO.setTotalPrice(calculateTotalPrice(order
						.getProductIds()));

				result.add(orderDTO);
			}
		}

		return result;
	}

	private static int calculateTotalPrice(List<Integer> productIds) {
		int totalPrice = 0;
		if (productIds != null && !productIds.isEmpty()) {
			for (Integer id : productIds) {
				Product product = InitData.products.stream()
						.filter(item -> item.getId() == id).findFirst()
						.orElse(null);
				if (product != null) {
					totalPrice = totalPrice + product.getPrice();
				}
			}
		}

		return totalPrice;
	}
}
