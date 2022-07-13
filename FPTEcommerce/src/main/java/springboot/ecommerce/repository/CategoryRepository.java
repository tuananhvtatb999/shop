package springboot.ecommerce.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import springboot.ecommerce.entity.CategoryEntity;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity, Integer> {
	@Query(value= "Select Count(*) from category c where c.name = :name or c.code = :code ", nativeQuery = true)
	public int checkDupCategory(@Param("name") String name, @Param("code") String code);
	
	@Query("Select c from CategoryEntity c where  c.name like %:keyword%")
	public Page<CategoryEntity> findAllByName(@Param("keyword") String keyword, Pageable pageable);
	
	@Query("Select c from CategoryEntity c")
	public Page<CategoryEntity> findAll1(Pageable pageable);
	
}
