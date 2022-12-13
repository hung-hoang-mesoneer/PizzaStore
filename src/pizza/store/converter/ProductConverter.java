package pizza.store.converter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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

	public static List<ProductDTO> toProductDTOs(ArrayList<Integer> idEntities) {
		List<ProductDTO> result = new ArrayList<ProductDTO>();
		
		if (idEntities != null && !idEntities.isEmpty()) {
			Set<Integer> setIds = new HashSet<>(idEntities);
			
			for (Integer idEn : setIds) {
				Product en = InitData.products.stream()
						.filter(item -> item.getId() == idEn).findFirst()
						.orElse(null);
				
				if (en != null) {
					ProductDTO dto = toProductDTO(en);
					long quantity = idEntities.stream()
							.filter(itemId -> idEn.compareTo(itemId) == 0).count();
					dto.setQuantity((int) quantity);
					result.add(dto);
				}
			}
		}

		return result;
	}
}
