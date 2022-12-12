package pizza.store.model;

public class NGModal {

	private String name;
	private String phone;
	private String deliveryTo;
	
	public NGModal() {
		super();
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
	public NGModal(String name, String phone, String deliveryTo) {
		super();
		this.name = name;
		this.phone = phone;
		this.deliveryTo = deliveryTo;
	}
	
	
}
