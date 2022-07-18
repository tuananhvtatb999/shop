package springboot.ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import springboot.ecommerce.entity.OrderDetailEntity;

public interface OrderDetailRepository extends JpaRepository<OrderDetailEntity, Integer> {
}
