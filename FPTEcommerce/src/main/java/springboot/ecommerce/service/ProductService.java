package springboot.ecommerce.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;

import springboot.ecommerce.dto.ProductDto;
import springboot.ecommerce.dto.ProductSearchDto;
import springboot.ecommerce.entity.ProductEntity;

public interface ProductService {
	ProductEntity saveProduct(ProductEntity product);

	public List<ProductEntity> getList();

	public List<ProductEntity> getListByDate();

	public Page<ProductEntity> getProductByNameOrCode(String keyword, int page, Integer id);

	public Page<ProductEntity> getProductPaging(int page, Integer id);

	public List<ProductEntity> getList1(int id);

	public Page<ProductEntity> getProductsPaging1(int page);

	public Page<ProductEntity> getProductByNameOrCode(String keyword, int page);

	public Optional<ProductEntity> getProductById(int id);
	
	public ProductEntity getProductOneById(Integer id);

	// ------------ seach by filter
	public Page<ProductDto> search(ProductSearchDto dto, int pageIndex, int pageSize);
	
	//-----------update product status
	public List<ProductEntity> getListByStatus();
		
	void updateProductStatus(int id, int status);
	
	//----------delete product  for shop
	public void deleteProductById(int id);
}
