package springboot.ecommerce.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import springboot.ecommerce.dto.ProductDto;
import springboot.ecommerce.dto.ProductSearchDto;
import springboot.ecommerce.dto.ShopDto;
import springboot.ecommerce.entity.ShopEntity;

public interface ShopService {
	ShopEntity saveShopEntity(ShopEntity shop);
	
	public int checkDupShop(String name);
	
	public List<ShopEntity> getListByStatus();
	
	public Optional<ShopEntity> findShopById(int id);

	ShopEntity findByEmail(String email);
	
	void updateShopStatus(int id, int status);
	
	public Page<ShopDto> search(ProductSearchDto dto, int pageIndex, int pageSize);
	
	ShopEntity findById(Integer id);
}
