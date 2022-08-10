package springboot.ecommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import springboot.ecommerce.entity.OrderEntity;
import springboot.ecommerce.entity.UserEntity;
import springboot.ecommerce.repository.OrderDetailRepository;
import springboot.ecommerce.repository.OrderRepository;
import springboot.ecommerce.service.UserService;

import java.util.List;

@Controller
@RequestMapping("/customer/order")
public class OrderController {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private UserService userService;

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @GetMapping({"/list/{status}", "/list"})
    public String orderList(final ModelMap modelMap, @PathVariable Integer status) {
        String email = "";
        Object x = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (x instanceof UserDetails) {
            email = ((UserDetails) x).getUsername();
        }
        UserEntity entity = userService.findByEmail(email);
        if (entity != null) {
            if (status == 0) {
                modelMap.addAttribute("orders", orderRepository.getByUserId(entity.getId()));
            } else {
                List<OrderEntity> entities = orderRepository.getByUserId(entity.getId());
                entities.forEach(t -> t.setOrderDetailEntity(orderDetailRepository.getByOrderIdAndStatus(t.getId(), status)));
                modelMap.addAttribute("orders", entities);
                modelMap.addAttribute("avatar", entity.getPath());
                modelMap.addAttribute("name", entity.getUsername());
            }
        }
        return "userOrder";
    }
}
