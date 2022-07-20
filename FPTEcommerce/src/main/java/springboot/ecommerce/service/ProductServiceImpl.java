package springboot.ecommerce.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import springboot.ecommerce.dto.ProductDto;
import springboot.ecommerce.dto.ProductSearchDto;
import springboot.ecommerce.entity.ProductEntity;
import springboot.ecommerce.repository.ProductRepository;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;
import java.util.Optional;

@PropertySource(value = "classpath:common.properties")
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    private EntityManager manager;

    @Override
    public ProductEntity saveProduct(ProductEntity product) {
        // TODO Auto-generated method stub
        return productRepository.save(product);
    }

    @Override
    public List<ProductEntity> getList() {
        // TODO Auto-generated method stub
        return productRepository.findAll();
    }

    @Override
    public Page<ProductEntity> getByIdShop(int page, Integer id) {
        return productRepository.findAll1(PageRequest.of(page - 1, pagingNumber), id);
    }

    @Override
    public List<ProductEntity> getListByDate() {
        return productRepository.findAllByDate();
    }

    @Value("${common.paging.number}")
    public int pagingNumber;

    @Override
    public Page<ProductEntity> getProductByNameOrCode(String keyword, int page, Integer id) {
        if (keyword != null && keyword.length() > 0) {
            return (Page<ProductEntity>) productRepository.findAllByNameOrCode(keyword,
                    PageRequest.of(page - 1, pagingNumber), id);
        } else {
            return (Page<ProductEntity>) productRepository.findAll1(PageRequest.of(page - 1, pagingNumber), id);

        }
    }

    @Override
    public Page<ProductEntity> getProductPaging(int page, Integer id) {
        // TODO Auto-generated method stub
        return (Page<ProductEntity>) productRepository.findAll1(PageRequest.of(page - 1, pagingNumber), id);
    }

    @Override
    public List<ProductEntity> getList1(int id) {
        // TODO Auto-generated method stub
        return productRepository.findAll2(id);
    }

    @Override
    public Page<ProductEntity> getProductsPaging1(int page) {
        // TODO Auto-generated method stub
        return (Page<ProductEntity>) productRepository.getListByStatus(PageRequest.of(page - 1, pagingNumber));
    }

    @Override
    public Page<ProductEntity> getProductByNameOrCode(String keyword, int page) {
        if (keyword != null && keyword.length() > 0) {
            return (Page<ProductEntity>) productRepository.findAllByNameOrCode1(keyword,
                    PageRequest.of(page - 1, pagingNumber));
        } else {
            return (Page<ProductEntity>) productRepository.getListByStatus(PageRequest.of(page - 1, pagingNumber));

        }
    }

    @Override
    public Optional<ProductEntity> getProductById(int id) {
        return (Optional<ProductEntity>) productRepository.findById(id);
    }

    @Override
    public Page<ProductDto> search(ProductSearchDto dto, int pageIndex, int pageSize) {
        String whereClause = "";
        String orderBy = "";
        String where11 = " where 1=1 ";

        if (pageIndex > 0) {
            pageIndex--;
        } else {
            pageIndex = 0;
        }

        String sqlCount = "select count(p.id) from ProductEntity as p inner join ShopEntity as s on p.shopEntity.id = s.id where 1=1 ";
        String sql = "select new springboot.ecommerce.dto.ProductDto(p, s) from ProductEntity as p inner join ShopEntity as s on p.shopEntity.id = s.id ";


        if (dto.getKeyWord() != null && StringUtils.hasText(dto.getKeyWord())) {
            whereClause += "and (p.name like :name) ";
        }

        if (!dto.getCategory().isEmpty()) {
            whereClause += " and (p.subCategoryEntity.codeSub in (:category)) ";
        }

        if (!dto.getSize().isEmpty()) {
            sql += " inner join ProductDetailsEntity pde on p.productDetailsEntity.id = pde.id where 1=1 ";
            whereClause += " and (p.productDetailsEntity.size in (:size)) ";
        } else {
            sql += where11;
        }

        sql += whereClause + orderBy;
        sqlCount += whereClause;
        Query q = manager.createQuery(sql, ProductDto.class);
        Query qCount = manager.createQuery(sqlCount);


        if (dto.getKeyWord() != null && StringUtils.hasText(dto.getKeyWord())) {
            q.setParameter("name", '%' + dto.getKeyWord().trim() + '%');
            qCount.setParameter("name", '%' + dto.getKeyWord().trim() + '%');
        }

        if (!dto.getCategory().isEmpty()) {
            q.setParameter("category", dto.getCategory());
            qCount.setParameter("category", dto.getCategory());
        }

        if (!dto.getSize().isEmpty()) {
            q.setParameter("size", dto.getSize());
            qCount.setParameter("size", dto.getSize());
        }

        int startPosition = pageIndex * pageSize;
        q.setFirstResult(startPosition);
        q.setMaxResults(pageSize);

        List<ProductDto> entities = q.getResultList();
        long count = (long) qCount.getSingleResult();

        Pageable pageable = PageRequest.of(pageIndex, pageSize);

        return new PageImpl<>(entities, pageable, count);
    }

    @Override
    public ProductEntity getProductOneById(Integer id) {
        // TODO Auto-generated method stub
        return productRepository.getProductOneById(id);
    }

    @Override
    public void deleteProductById(int id) {
        productRepository.deleteById(id);
    }

    @Override
    public List<ProductEntity> getListByStatus() {
        // TODO Auto-generated method stub
        return productRepository.getListByStatus1();
    }

    @Override
    public void updateProductStatus(int id, int status) {
        ProductEntity product = productRepository.findById(id).get();
        product.setStatus(status);
        productRepository.save(product);
    }

	@Override
	public List<ProductEntity> getProductBanned(int id) {
		// TODO Auto-generated method stub
		return productRepository.findAllBanned(id);
	}

	@Override
	public Page<ProductEntity> getProductByNameOrCodeBanned(String keyword, int page, Integer id) {
		 if (keyword != null && keyword.length() > 0) {
	            return (Page<ProductEntity>) productRepository.findAllByNameOrCodeBanned(keyword,
	                    PageRequest.of(page - 1, pagingNumber), id);
	        } else {
	            return (Page<ProductEntity>) productRepository.findAllBanned(PageRequest.of(page - 1, pagingNumber), id);

	        }
	}
	
	@Override
    public Page<ProductEntity> getProductPagingBanned(int page, Integer id) {
        // TODO Auto-generated method stub
        return (Page<ProductEntity>) productRepository.findAllBanned(PageRequest.of(page - 1, pagingNumber), id);
    }

}
