package pizza.store.restClient;

import java.util.List;

import pizza.store.ProductType;
import pizza.store.model.Product;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.rest.client.GenericTypes;

public class ProductClient {

	public static List<Product> getProducts(String name, ProductType productType) {
		return Ivy.rest().client("productService")
				.queryParam(name, productType)
				.request()
				.get(GenericTypes.listOf(Product.class));
	}
}
