package springboot.ecommerce.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import springboot.ecommerce.entity.DiscountEntity;

@Repository
public interface DiscountRepository extends JpaRepository<DiscountEntity, Integer> {
	
	@Query("Select d from DiscountEntity d where d.name like %:keyword% or d.code like %:keyword% and d.shopEntity.id = :idShop" )
	public Page<DiscountEntity> findAllByNameOrCode(@Param("keyword") String keyword, Pageable pageable,@Param("idShop") Integer idShop);
	
	@Query("Select d from DiscountEntity d where d.shopEntity.id = ?1")
	public Page<DiscountEntity> findAll1(Pageable pageable, Integer idShop);
	
	@Query("Select d from DiscountEntity d where d.shopEntity.id = ?1")
	public List<DiscountEntity> findAll(Integer idShop);
}
