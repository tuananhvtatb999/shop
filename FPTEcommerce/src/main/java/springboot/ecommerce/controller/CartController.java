package springboot.ecommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import springboot.ecommerce.dto.CartDto;
import springboot.ecommerce.dto.ProductInCart;
import springboot.ecommerce.dto.UserDto;
import springboot.ecommerce.entity.ProductEntity;
import springboot.ecommerce.entity.UserEntity;
import springboot.ecommerce.repository.ProductRepository;
import springboot.ecommerce.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CartController {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private UserService userService;

    @GetMapping(value = "/cart")
    public String cartView(final HttpServletRequest request){
        return "cart";
    }

    @PostMapping("add-to-cart")
    public ResponseEntity addToCart(@RequestBody ProductInCart productInCart,
                                    final HttpServletRequest request) {

        HttpSession session = request.getSession();

        CartDto cart;

        if (session.getAttribute("CART") != null) {
            cart = (CartDto) session.getAttribute("CART");
        } else {
            cart = new CartDto();
            session.setAttribute("CART", cart);
        }

        List<ProductInCart> productInCarts = cart.getProductInCarts();

        boolean checkProductInCart = false;

        for (ProductInCart item : productInCarts){
            if(item.getId() == productInCart.getId()){
                checkProductInCart = true;
                item.setQuantity(item.getQuantity() + productInCart.getQuantity());
            }
        }

        if(!checkProductInCart){
            ProductEntity productEntity = productRepository.getById(productInCart.getId());
            productInCart.setName(productEntity.getName());
            productInCart.setShopName(productEntity.getShopEntity().getName());
            productInCart.setShopUrl(productEntity.getShopEntity().getShopUrl());
            productInCart.setPathImage(productEntity.getPathImage());
            productInCart.setSize(productEntity.getProductDetailsEntity().getSize());
            productInCart.setSize(productEntity.getProductDetailsEntity().getColor());
            productInCart.setUnitPrice(productEntity.getUnitPrice());
            productInCart.setPromotionPrice(productEntity.getPromotionPrice());
            productInCart.setPercentz(productEntity.getDiscountEntity().getPercentz());
            cart.getProductInCarts().add(productInCart);
        }

        session.setAttribute("QUANTITY_PRODUCT_IN_CART", cart.getProductInCarts().size());
        return ResponseEntity.ok(String.valueOf(cart.getProductInCarts().size()));
    }

    @PostMapping("update-cart")
    public ResponseEntity<String> update(@RequestBody ProductInCart productInCart,
            final HttpServletRequest request){
        HttpSession session = request.getSession();

        CartDto cartDto = (CartDto) session.getAttribute("CART");

        for (ProductInCart item : cartDto.getProductInCarts()){
            if(item.getId() == productInCart.getId()){
                item.setQuantity(productInCart.getQuantity());
            }
        }
        return ResponseEntity.ok(String.valueOf(cartDto.getProductInCarts().size()));
    }

    @GetMapping(value = "/remove-product-in-cart/{id}")
    public String removeProduct(final HttpServletRequest request,
                                @PathVariable Integer id) {

        HttpSession session = request.getSession();

        if (session.getAttribute("CART") != null) {
            CartDto cart = (CartDto) session.getAttribute("CART");

            List<ProductInCart> list = cart.getProductInCarts();

            list.removeIf(inCart -> inCart.getId() == id);
        }
        return "cart";
    }

    @GetMapping(value = "/customer/check-out")
    public String checkOut(final ModelMap modelMap) {

        String email = "";
        Object x = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(x instanceof UserDetails){
            email = ((UserDetails) x).getUsername();
        }
        UserEntity entity = userService.findByEmail(email);

        modelMap.addAttribute("name", entity.getUsername());
        modelMap.addAttribute("phone", entity.getPhoneNumber());
        modelMap.addAttribute("address", entity.getAddress());
        return "userCheckOut";
    }
}
