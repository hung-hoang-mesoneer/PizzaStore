package pizza.store.restClient;

import java.util.List;

import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Response;

import pizza.store.StatusOrder;
import pizza.store.dto.OrderDTO;
import pizza.store.model.Order;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.rest.client.GenericTypes;

public class OrderClient {

	public static List<OrderDTO> getOrders(String name, StatusOrder statusOrder) {
		return Ivy.rest().client("orderService").queryParam("name", name)
				.queryParam("statusOrder", statusOrder).request()
				.get(GenericTypes.listOf(OrderDTO.class));
	}

	public static Response createOrder(Order order) {
		return Ivy.rest().client("orderService").request()
				.post(Entity.json(order));
	}

	public static Response updateStatusOrder(int orderId,
			StatusOrder statusOrder) {
		return Ivy.rest().client("orderService").path(String.valueOf(orderId))
				.queryParam("statusOrder", statusOrder).request().put(Entity.json(statusOrder));
	}
}
