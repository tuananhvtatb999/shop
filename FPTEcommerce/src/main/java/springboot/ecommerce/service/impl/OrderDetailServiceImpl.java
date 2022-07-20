package springboot.ecommerce.service.impl;

import org.apache.commons.lang3.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import springboot.ecommerce.entity.OrderDetailEntity;
import springboot.ecommerce.repository.OrderDetailRepository;
import springboot.ecommerce.service.OrderDetailService;

import java.util.Collections;
import java.util.List;

@PropertySource(value = "classpath:common.properties")
@Service
public class OrderDetailServiceImpl implements OrderDetailService {

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Override
    public List<OrderDetailEntity> getByOrderIdAndStatus(Integer orderId, Integer status) {
        if (ObjectUtils.isEmpty(orderId)) {
            return Collections.emptyList();
        }
        return orderDetailRepository.getByOrderIdAndStatus(orderId, status);
    }

    @Override
    public List<OrderDetailEntity> getByShopId(Integer shopId) {
        if (ObjectUtils.isEmpty(shopId)) {
            return Collections.emptyList();
        }
        return orderDetailRepository.getByShopId(shopId);
    }

    @Override
    public OrderDetailEntity getById(Integer id) {
        if (ObjectUtils.isEmpty(id)) {
            return null;
        }
        return orderDetailRepository.getById(id);
    }

    @Override
    public void save(OrderDetailEntity orderDetailEntity) {
        orderDetailRepository.save(orderDetailEntity);
    }
}
