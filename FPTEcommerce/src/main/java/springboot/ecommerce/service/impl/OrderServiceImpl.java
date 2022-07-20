package springboot.ecommerce.service.impl;

import org.apache.commons.lang3.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import springboot.ecommerce.entity.OrderEntity;
import springboot.ecommerce.repository.OrderRepository;
import springboot.ecommerce.service.OrderService;

@PropertySource(value = "classpath:common.properties")
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Override
    public OrderEntity getById(Integer id) {
        if (ObjectUtils.isEmpty(id)) {
            return null;
        }
        return orderRepository.getById(id);
    }
}
