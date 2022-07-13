package springboot.ecommerce.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import springboot.ecommerce.entity.SubCategoryEntity;
import springboot.ecommerce.repository.SubCategoryRepository;

@PropertySource(value = "classpath:common.properties")
@Service
public class SubCategoryServiceImpl implements SubCategoryService {
	int result = 0;
	@Autowired
	SubCategoryRepository subCategoryRepository;

	@Override
	public SubCategoryEntity saveSubCategoryEntity(SubCategoryEntity subcategory) {
		// TODO Auto-generated method stub
		return subCategoryRepository.save(subcategory);
	}

	@Override
	public int checkDupSubCategory(String name, String code) {
		result = subCategoryRepository.checkDupSubCategory(name, code);
		return result;
	}

	@Value("${common.paging.number}")
	public int pagingNumber;

	@Override
	public Page<SubCategoryEntity> getProductsPaging(int page) {
		// TODO Auto-generated method stub
		return (Page<SubCategoryEntity>) subCategoryRepository.findAll(PageRequest.of(page - 1, pagingNumber));
	}

	@Override
	public Page<SubCategoryEntity> getSubCategoryByName(String keyword, int page) {
		if (keyword != null && keyword.length() > 0) {
			return (Page<SubCategoryEntity>) subCategoryRepository.findAllByName(keyword,
					PageRequest.of(page - 1, pagingNumber));
		} else {
			return (Page<SubCategoryEntity>) subCategoryRepository.findAll(PageRequest.of(page - 1, pagingNumber));

		}
	}

	@Override
	public List<SubCategoryEntity> getList() {
		// TODO Auto-generated method stub
		return subCategoryRepository.findAll();
	}

	@Override
	public void delete(int id) {
		subCategoryRepository.deleteById(id);
	}

	@Override
	public Optional<SubCategoryEntity> findSubCategoryById(int id) {
		// TODO Auto-generated method stub
		return (Optional<SubCategoryEntity>) subCategoryRepository.findById(id);
	}
}
