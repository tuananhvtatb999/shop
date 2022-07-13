package springboot.ecommerce.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import springboot.ecommerce.entity.DiscountEntity;
import springboot.ecommerce.repository.DiscountRepository;

@PropertySource(value = "classpath:common.properties")
@Service
public class DiscountServiceImpl implements DiscountService {

	@Autowired
	DiscountRepository discountRepository;

	@Override
	public DiscountEntity saveDiscount(DiscountEntity discount) {
		// TODO Auto-generated method stub
		return discountRepository.save(discount);
	}

	@Value("${common.paging.number}")
	public int pagingNumber;

	@Override
	public Page<DiscountEntity> getDiscountByNameOrCode(String keyword, int page,Integer id) {
		if (keyword != null && keyword.length() > 0) {
			return (Page<DiscountEntity>) discountRepository.findAllByNameOrCode(keyword,
					PageRequest.of(page - 1, pagingNumber),id);
		} else {
			return (Page<DiscountEntity>) discountRepository.findAll1(PageRequest.of(page - 1, pagingNumber), id);

		}
	}

	@Override
	public Page<DiscountEntity> getDiscountPaging(int page, Integer id) {
		// TODO Auto-generated method stub
		return (Page<DiscountEntity>) discountRepository.findAll1(PageRequest.of(page - 1, pagingNumber),id);
	}

	@Override
	public List<DiscountEntity> getList(int id) {
		// TODO Auto-generated method stub
		return discountRepository.findAll(id);
	}

	@Override
	public void delete(int id) {
		discountRepository.deleteById(id);
	}

	@Override
	public Optional<DiscountEntity> findDiscountById(int id) {
		// TODO Auto-generated method stub
		return (Optional<DiscountEntity>) discountRepository.findById(id);
	}

}
