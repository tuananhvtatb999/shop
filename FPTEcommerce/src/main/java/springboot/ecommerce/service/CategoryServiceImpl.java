package springboot.ecommerce.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import springboot.ecommerce.entity.CategoryEntity;
import springboot.ecommerce.repository.CategoryRepository;

@PropertySource(value = "classpath:common.properties")
@Service
public class CategoryServiceImpl implements CategoryService {
	int result = 0;
	@Autowired
	CategoryRepository categoryRepository;

	@Override
	public CategoryEntity saveCategoryEntity(CategoryEntity category) {
		// TODO Auto-generated method stub
		return categoryRepository.save(category);
	}

	@Override
	public int checkDupCategory(String name, String code) {
		result = categoryRepository.checkDupCategory(name, code);
		return result;
	}

	@Value("${common.paging.number}")
	public int pagingNumber;

	@Override
	public Page<CategoryEntity> getProductsPaging(int page) {
		// TODO Auto-generated method stub
		return (Page<CategoryEntity>) categoryRepository.findAll(PageRequest.of(page - 1, pagingNumber));
	}

	@Override
	public Page<CategoryEntity> getCategoryByName(String keyword, int page) {
		if (keyword != null && keyword.length() > 0) {
			return (Page<CategoryEntity>) categoryRepository.findAllByName(keyword,
					PageRequest.of(page - 1, pagingNumber));
		} else {
			return (Page<CategoryEntity>) categoryRepository.findAll(PageRequest.of(page - 1, pagingNumber));

		}
	}

	@Override
	public List<CategoryEntity> getList() {
		// TODO Auto-generated method stub
		return categoryRepository.findAll();
	}

	@Override
	public void delete(int id) {
		categoryRepository.deleteById(id);
	}

	@Override
	public Optional<CategoryEntity> findCategoryById(int id) {
		// TODO Auto-generated method stub
		return (Optional<CategoryEntity>) categoryRepository.findById(id);
	}
}
