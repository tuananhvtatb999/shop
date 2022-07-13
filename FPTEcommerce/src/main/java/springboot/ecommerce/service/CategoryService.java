package springboot.ecommerce.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;

import springboot.ecommerce.entity.CategoryEntity;

public interface CategoryService {
	CategoryEntity saveCategoryEntity(CategoryEntity category);
	
	public int checkDupCategory(String name,String code);
	
	public Page<CategoryEntity> getCategoryByName(String keyword, int page);
	
	public Page<CategoryEntity> getProductsPaging(int page);
	
	public List<CategoryEntity> getList();
	
	public void delete(int id);
	
	public Optional<CategoryEntity> findCategoryById(int id);
}
