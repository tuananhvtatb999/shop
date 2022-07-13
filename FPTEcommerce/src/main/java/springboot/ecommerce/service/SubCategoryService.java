package springboot.ecommerce.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;

import springboot.ecommerce.entity.SubCategoryEntity;

public interface SubCategoryService {
	SubCategoryEntity saveSubCategoryEntity(SubCategoryEntity subcategory);
	
	public int checkDupSubCategory(String name,String code);
	
	public Page<SubCategoryEntity> getSubCategoryByName(String keyword, int page);
	
	public Page<SubCategoryEntity> getProductsPaging(int page);
	
	public List<SubCategoryEntity> getList();
	
	public void delete(int id);
	
	public Optional<SubCategoryEntity> findSubCategoryById(int id);
}
