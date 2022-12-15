package pizza.store.model;

import pizza.store.ProductType;

public class Product {

	private int id;

	private String name;

	private int price;

	private String image;

	private ProductType type;

	public Product() {
		super();
	}

	public Product(int id, String name, int price, String image,
			ProductType type) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.image = image;
		this.type = type;
	}

	public ProductType getType() {
		return type;
	}

	public void setType(ProductType type) {
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
