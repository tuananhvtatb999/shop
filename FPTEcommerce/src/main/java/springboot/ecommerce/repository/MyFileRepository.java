package springboot.ecommerce.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import springboot.ecommerce.entity.MyFileEntity;


@Repository
public interface MyFileRepository extends CrudRepository<MyFileEntity, Integer> {
}
