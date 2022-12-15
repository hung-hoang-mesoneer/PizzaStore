package pizza.store.restAPI;

import static pizza.store.converter.ProductConverter.toProductDTOs;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Singleton;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;

import pizza.store.StatusOrder;
import pizza.store.dto.OrderDTO;
import pizza.store.init.InitData;
import pizza.store.model.Order;
import pizza.store.model.Product;
import pizza.store.utils.DateUtils;

@Singleton
@Path("{applicationName}/order")
public class OrderController {

	private List<OrderDTO> orderDTOs = new ArrayList<>();

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getOrder(@QueryParam("name") String name,
			@QueryParam("statusOrder") StatusOrder statusOrder) {
		List<OrderDTO> resullt = new ArrayList<OrderDTO>();

		if (StringUtils.isNotBlank(name)
				&& CollectionUtils.isNotEmpty(orderDTOs)) {
			resullt = orderDTOs
					.stream()
					.filter(item -> item.getName().equals(name)
							&& item.getStatus().compareTo(statusOrder) == 0)
					.collect(Collectors.toList());
		} else if (StringUtils.isBlank(name)
				&& CollectionUtils.isNotEmpty(orderDTOs)) {
			resullt = orderDTOs
					.stream()
					.filter(item -> item.getStatus().compareTo(statusOrder) == 0)
					.collect(Collectors.toList());
		}

		return Response.status(Status.OK).entity(resullt).build();
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response createOrder(Order order) {
		int orderId = 1;
		if (!orderDTOs.isEmpty()) {
			orderId = orderDTOs.stream()
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
		orderDTOs.add(dto);

		return Response.status(Status.OK).build();
	}

	@PUT
	@Path("/{orderId}")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response updateStatusOrder(@PathParam("orderId") int orderId,
			StatusOrder statusOrder) {
		try {
			OrderDTO orderDTO = orderDTOs.stream()
					.filter(order -> order.getOrderId() == orderId).findFirst()
					.orElse(null);
			if (orderDTO != null) {
				orderDTO.setStatus(statusOrder);
			}

			return Response.status(Status.OK).build();
		} catch (IndexOutOfBoundsException ex) {
			return Response.status(Status.NOT_FOUND)
					.entity("Order with id '" + orderId + "' does not exist.")
					.build();
		}
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
