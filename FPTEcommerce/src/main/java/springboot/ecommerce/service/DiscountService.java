package springboot.ecommerce.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;

import springboot.ecommerce.entity.CategoryEntity;
import springboot.ecommerce.entity.DiscountEntity;

public interface DiscountService {
	//to do
	//declare name function
	// tuong tu categoryservice va categoryserviceimpl
	DiscountEntity saveDiscount(DiscountEntity discount);
	
	public Page<DiscountEntity> getDiscountByNameOrCode(String keyword, int page,Integer id);
	
	public Page<DiscountEntity> getDiscountPaging(int page,Integer id);
	
	public List<DiscountEntity> getList(int id);
	
	public void delete(int id);
	
	public Optional<DiscountEntity> findDiscountById(int id);
}
