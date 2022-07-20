package springboot.ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import springboot.ecommerce.entity.OrderDetailEntity;

import java.util.List;

public interface OrderDetailRepository extends JpaRepository<OrderDetailEntity, Integer> {

    @Query("Select d from OrderDetailEntity d where d.orderEntity.id= ?1 and d.status = ?2")
    List<OrderDetailEntity> getByOrderIdAndStatus(Integer id, Integer status);

    @Query("Select d from OrderDetailEntity d where d.productEntity.shopEntity.id= ?1")
    List<OrderDetailEntity> getByShopId(Integer id);
}
