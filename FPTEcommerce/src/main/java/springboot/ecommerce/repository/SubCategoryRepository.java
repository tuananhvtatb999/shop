package springboot.ecommerce.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import springboot.ecommerce.entity.SubCategoryEntity;

@Repository
public interface SubCategoryRepository extends JpaRepository<SubCategoryEntity, Integer> {
	@Query(value= "Select Count(*) from subcategory c where c.name_sub = :name_sub or c.code_sub = :code_sub ", nativeQuery = true)
	public int checkDupSubCategory(@Param("name_sub") String name_sub, @Param("code_sub") String code_sub);
	
	@Query("Select c from SubCategoryEntity c where  c.nameSub like %:keyword%")
	public Page<SubCategoryEntity> findAllByName(@Param("keyword") String keyword, Pageable pageable);
	
	@Query("Select c from SubCategoryEntity c")
	public Page<SubCategoryEntity> findAll1(Pageable pageable);
}
