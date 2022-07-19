package springboot.ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import springboot.ecommerce.entity.OrderEntity;

import java.util.List;

public interface OrderRepository extends JpaRepository<OrderEntity, Integer> {

    @Query("Select d from OrderEntity d where d.userEntity.id = ?1")
    List<OrderEntity> getByUserId(Integer id);
}
