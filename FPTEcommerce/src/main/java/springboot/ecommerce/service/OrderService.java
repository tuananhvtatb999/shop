package springboot.ecommerce.service;

import springboot.ecommerce.entity.OrderEntity;

public interface OrderService {

    OrderEntity getById(Integer id);
}
