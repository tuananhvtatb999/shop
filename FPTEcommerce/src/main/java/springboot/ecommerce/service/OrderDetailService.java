package springboot.ecommerce.service;

import springboot.ecommerce.entity.OrderDetailEntity;

import java.util.List;

public interface OrderDetailService {

    List<OrderDetailEntity> getByOrderIdAndStatus(Integer orderId, Integer status);

    List<OrderDetailEntity> getByShopId(Integer shopId);

    OrderDetailEntity getById(Integer id);

    void save(OrderDetailEntity orderDetailEntity);
}
