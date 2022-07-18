package springboot.ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import springboot.ecommerce.entity.OrderEntity;

public interface OrderRepository extends JpaRepository<OrderEntity, Integer> {
}
