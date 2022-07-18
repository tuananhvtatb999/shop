package springboot.ecommerce.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.util.StringUtils;
import springboot.ecommerce.dto.ProductDto;
import springboot.ecommerce.dto.ProductSearchDto;
import springboot.ecommerce.dto.ShopDto;
import springboot.ecommerce.entity.CategoryEntity;
import springboot.ecommerce.entity.ShopEntity;
import springboot.ecommerce.repository.ShopRepository;

@Service
public class ShopServiceImpl implements ShopService {
	int result = 0;

	@Autowired
	ShopRepository shopRepository;
	
	@Autowired
	private EntityManager manager;

	@Override
	public ShopEntity saveShopEntity(ShopEntity shop) {
		// TODO Auto-generated method stub
		return shopRepository.save(shop);
	}

	@Override
	public int checkDupShop(String name) {
		result = shopRepository.checkDupShop(name);
		return result;
	}

	@Override
	public List<ShopEntity> getListByStatus() {
		return shopRepository.getList();
	}

	@Override
	public Optional<ShopEntity> findShopById(int id) {
		// TODO Auto-generated method stub
		return (Optional<ShopEntity>) shopRepository.findById(id);
	}

	@Override
	public ShopEntity findByEmail(String email) {
		// TODO Auto-generated method stub
		return shopRepository.getShopByEmail(email);
	}

	@Override
	public void updateShopStatus(int id, int status) {
		ShopEntity shop = shopRepository.findById(id).get();
		shop.setStatus(status);
		shopRepository.save(shop);

	}
	
	@Override
	public Page<ShopDto> search(ProductSearchDto dto, int pageIndex, int pageSize) {
		String whereClauseShop = "";

		if (pageIndex > 0) {
			pageIndex--;
		} else {
			pageIndex = 0;
		}

		String sqlShop = "select new springboot.ecommerce.dto.ShopDto(s) from ShopEntity as s where 1=1 ";
		String sqlCountShop = "select count(s.id) from ShopEntity as s where 1=1 ";

		if (dto.getKeyWord() != null && StringUtils.hasText(dto.getKeyWord())) {
			whereClauseShop += "and (s.name like :name) ";
		}

		sqlCountShop += whereClauseShop;
		sqlShop += whereClauseShop;
		Query qCountShop = manager.createQuery(sqlCountShop);
		Query qShop= manager.createQuery(sqlShop, ShopDto.class);


		if (dto.getKeyWord() != null && StringUtils.hasText(dto.getKeyWord())) {
			qShop.setParameter("name", '%' + dto.getKeyWord().trim() + '%');
			qCountShop.setParameter("name", '%' + dto.getKeyWord().trim() + '%');
		}

		int startPosition = pageIndex * pageSize;
		qShop.setFirstResult(startPosition);
		qShop.setMaxResults(pageSize);

		List<ShopDto> shopDtoList = qShop.getResultList();
		long countShop = (long) qCountShop.getSingleResult();

		Pageable pageable = PageRequest.of(pageIndex, pageSize);
		return new PageImpl<>(shopDtoList, pageable, countShop);
	}

	@Override
	public ShopEntity findById(Integer id) {
		
		return shopRepository.getById(id);
	}

}
