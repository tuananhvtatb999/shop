package springboot.ecommerce.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import springboot.ecommerce.entity.ShopEntity;

@Repository
public interface ShopRepository extends JpaRepository<ShopEntity, Integer> {
	@Query(value= "Select Count(*) from shop s where s.name = :name", nativeQuery = true)
	public int checkDupShop(@Param("name") String name);
	
	@Query("Select s from ShopEntity s  where  s.status = 0") 
	public List<ShopEntity> getList();
	
	@Query("Select s from ShopEntity s where s.email = ?1") 
	public ShopEntity getShopByEmail(String email);

}
