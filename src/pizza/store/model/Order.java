package pizza.store.model;

import java.util.List;

import pizza.store.StatusOrder;

public class Order {
	private String orderId;
	private String name;
	private String phone;
	private String deliveryTo;
	private StatusOrder status;
	List<Product> products;
	
	public Order() {
		super();
	}

	public Order(String orderId, String name, String phone, String deliveryTo,
			StatusOrder status, List<Product> products) {
		super();
		this.orderId = orderId;
		this.name = name;
		this.phone = phone;
		this.deliveryTo = deliveryTo;
		this.products = products;
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public StatusOrder getStatus() {
		return status;
	}

	public void setStatus(StatusOrder status) {
		this.status = status;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
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

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

}
