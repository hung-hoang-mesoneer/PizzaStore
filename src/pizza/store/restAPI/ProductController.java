package pizza.store.restAPI;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Singleton;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import pizza.store.ProductType;
import pizza.store.model.Product;

@Singleton
@Path("{applicationName}/product")
public class ProductController {

	private List<Product> products = new ArrayList<>();

	public ProductController() {
		addNewProduct(1, "Pizza Hai San", 5, "pizza1.jpg", ProductType.PIZZA);
		addNewProduct(2, "Pizza Cocktail", 10, "pizza2.jpg", ProductType.PIZZA);
		addNewProduct(3, "Pizza New York", 12, "pizza3.jpg", ProductType.PIZZA);
		addNewProduct(4, "Pizza Phomai", 17, "pizza4.jpg", ProductType.PIZZA);
		addNewProduct(5, "Pizza Tomato", 20, "pizza5.jpg", ProductType.PIZZA);
		addNewProduct(6, "Pizza breef", 36, "pizza6.jpg", ProductType.PIZZA);
		addNewProduct(7, "Tra Sua 1", 5, "drink1.jpg", ProductType.DRINK);
		addNewProduct(8, "Tra Sua 2", 10, "drink2.jpg", ProductType.DRINK);
		addNewProduct(9, "Pizza New York", 12, "drink3.jpg", ProductType.DRINK);
		addNewProduct(10, "Pizza Phomai", 17, "drink4.jpg", ProductType.DRINK);
		addNewProduct(11, "Pizza Tomato", 20, "drink5.jpg", ProductType.DRINK);
		addNewProduct(12, "Pizza breef", 36, "drink6.jpg", ProductType.DRINK);
	}

	private Product addNewProduct(int id, String name, int price, String image,
			ProductType type) {
		Product product = new Product();
		product.setId(id);
		product.setName(name);
		product.setPrice(price);
		product.setImage(image);
		product.setType(type);
		products.add(product);
		return product;
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getProducts(@QueryParam("name") String name,
			@QueryParam("productType") ProductType productType) {
		return Response.status(Status.OK).entity(findProducts(productType))
				.build();
	}

	private List<Product> findProducts(ProductType productType) {
		List<Product> matches = new ArrayList<>();

		for (Product candidate : products) {
			if (candidate.getType().compareTo(productType) == 0) {
				matches.add(candidate);
			}
		}
		return matches;
	}
}
