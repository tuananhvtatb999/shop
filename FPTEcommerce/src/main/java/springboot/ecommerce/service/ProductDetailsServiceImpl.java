package springboot.ecommerce.service;

import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

@PropertySource(value = "classpath:common.properties")
@Service
public class ProductDetailsServiceImpl implements ProductDetailService {
	
}
