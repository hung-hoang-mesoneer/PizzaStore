package pizza.store.converter;

import java.util.ArrayList;
import java.util.List;

import pizza.store.dto.ProductDTO;
import pizza.store.init.InitData;
import pizza.store.model.Product;

public class ProductConverter {

	public static ProductDTO toProductDTO(Product entity) {
		ProductDTO dto = new ProductDTO();

		if (entity != null) {
			dto.setId(entity.getId());
			dto.setName(entity.getName());
			dto.setPrice(entity.getPrice());
		}

		return dto;
	}

	public static List<ProductDTO> toProductDTOs(List<Integer> idEntities) {
		List<ProductDTO> result = new ArrayList<ProductDTO>();
		if (idEntities != null && !idEntities.isEmpty()) {
			for (Integer idEn : idEntities) {
				Product en = InitData.products.stream()
						.filter(item -> item.getId() == idEn).findFirst()
						.orElse(null);
				if (en != null) {
					ProductDTO dto = toProductDTO(en);
					int quantity = (int) InitData.products.stream()
							.filter(item -> item.getId() == idEn).count();
					if (quantity > 1) {
						idEntities.remove(idEn);
					}
					dto.setQuantity(quantity);
					result.add(dto);
				}
			}
		}

		return result;
	}
}
