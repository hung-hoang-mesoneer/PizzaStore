package pizza.store.dto;

import java.util.List;

import pizza.store.StatusOrder;

public class OrderDTO {
	private int orderId;
	private String name;
	private String phone;
	private String deliveryTo;
	private StatusOrder status;
	private String date;
	private List<ProductDTO> products;
	private int totalPrice;

	public OrderDTO() {
		super();
	}

	public OrderDTO(int orderId, String name, String phone,
			String deliveryTo, StatusOrder status, String date,
			List<ProductDTO> products, int totalPrice) {
		super();
		this.orderId = orderId;
		this.name = name;
		this.phone = phone;
		this.deliveryTo = deliveryTo;
		this.status = status;
		this.date = date;
		this.products = products;
		this.totalPrice = totalPrice;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDeliveryTo() {
		return deliveryTo;
	}

	public void setDeliveryTo(String deliveryTo) {
		this.deliveryTo = deliveryTo;
	}

	public StatusOrder getStatus() {
		return status;
	}

	public void setStatus(StatusOrder status) {
		this.status = status;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public List<ProductDTO> getProducts() {
		return products;
	}

	public void setProducts(List<ProductDTO> products) {
		this.products = products;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

}
