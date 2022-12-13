package pizza.store.service;

import static pizza.store.converter.ProductConverter.toProductDTOs;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import pizza.store.StatusOrder;
import pizza.store.dto.OrderDTO;
import pizza.store.init.InitData;
import pizza.store.model.Order;
import pizza.store.model.Product;
import pizza.store.utils.DateUtils;

public class OrderService {

	public static void createOrder(Order order) {
		int orderId = 1;
		if (InitData.ordersDTO == null) {
			InitData.ordersDTO = new ArrayList<>();
		}
		if (!InitData.ordersDTO.isEmpty()) {
			orderId = InitData.ordersDTO.stream()
					.max(Comparator.comparing(OrderDTO::getOrderId)).get()
					.getOrderId() + 1;
		}

		OrderDTO dto = new OrderDTO();
		dto.setOrderId(orderId);
		dto.setName(order.getName());
		dto.setPhone(order.getPhone());
		dto.setDeliveryTo(order.getDeliveryTo());
		dto.setStatus(StatusOrder.PENDING);
		dto.setDate(DateUtils.convertDate(new Date()));
		dto.setTotalPrice(calculateTotalPrice(order.getProductIds()));
		dto.setProducts(toProductDTOs(order.getProductIds()));
		InitData.ordersDTO.add(dto);
	}

	public static List<OrderDTO> getOrders() {
		List<OrderDTO> result = new ArrayList<>();
		if (InitData.ordersDTO != null && !InitData.ordersDTO.isEmpty()) {
			result = InitData.ordersDTO
					.stream()
					.filter(item -> item.getStatus()
							.equals(StatusOrder.PENDING))
					.collect(Collectors.toList());
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

	public static void changeStatusOrder(int orderId, StatusOrder statusOrder) {
		OrderDTO orderDTO = InitData.ordersDTO.stream()
				.filter(order -> order.getOrderId() == orderId).findFirst()
				.orElse(null);
		if (orderDTO != null) {
			orderDTO.setStatus(statusOrder);
		}
		
		System.out.println("test");
	}
}
