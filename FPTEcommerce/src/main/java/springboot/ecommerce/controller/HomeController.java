package springboot.ecommerce.controller;

import java.security.Principal;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import springboot.ecommerce.dto.ProductDto;
import springboot.ecommerce.dto.ShopDto;
import springboot.ecommerce.dto.ProductSearchDto;
import springboot.ecommerce.entity.ProductEntity;
import springboot.ecommerce.entity.ShopEntity;
import springboot.ecommerce.service.CategoryService;
import springboot.ecommerce.service.ProductService;
import springboot.ecommerce.service.ShopService;
import springboot.ecommerce.service.SubCategoryService;

@Controller
public class HomeController {
	
	private static int FIRST_PAGE = 1;
	
	@Value("${common.paging.number}")
	public int pagingNumber;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ShopService shopService;
	
	@GetMapping({"/","/home"})
	public String home1(Model model,Principal principal,HttpSession session) {
		if (principal != null && principal.getName() != null && !"".equals(principal.getName())) {
			session.setAttribute("email", principal.getName());			
		}
		String emailShop = (String) session.getAttribute("email");
		if(emailShop != null && !"".equals(emailShop)) {
			session.setAttribute("emailShop", emailShop);
//			ShopEntity shop = shopService.findByEmail(emailShop);
//			session.setAttribute("idShop", shop.getId());
		}

		model.addAttribute("listSubCategory", subCategoryService.getList());
		model.addAttribute("listProduct", productService.getList());
		model.addAttribute("listCategory", categoryService.getList());
		model.addAttribute("listProductDate", productService.getListByDate());
		return "home";
	}
	
	@GetMapping({"/search"})
	public String search() {
		return "search";
	}
	
	
	@PostMapping(value = "/search")
	public ResponseEntity<List<ProductDto>> search(@RequestBody ProductSearchDto dto){
		List<ProductDto> products = productService.search(dto, FIRST_PAGE, pagingNumber).getContent();
	    return ResponseEntity.ok(products);
	}

	@PostMapping(value = "/search-shop")
	public ResponseEntity<List<ShopDto>> searchShop(@RequestBody ProductSearchDto dto){
		List<ShopDto> shopDtos = shopService.search(dto, FIRST_PAGE, pagingNumber).getContent();
		return ResponseEntity.ok(shopDtos);
	}
	
	@GetMapping({"/detailProduct"})
	public String detailProduct(Model model, @RequestParam(name = "id") Integer id) {
		ProductEntity product = productService.getProductOneById(id);
		model.addAttribute("product", product);
		return "detailProduct";
	}
	
	
	@GetMapping({"/shop"})
	public String shop(Model model, @RequestParam(name = "id") Integer id) {
		ShopEntity shop = shopService.findById(id);
		model.addAttribute("shop", shop);
		model.addAttribute("products", productService.getByIdShop(FIRST_PAGE, id).getContent());
		return "shop";
	}
	
	
	//------ test View-------
	@GetMapping({"/emptyCart"})
	public String emptycart() {
		return "emptyCart";
	}
	@GetMapping({"/shopProfile"})
	public String shop1() {
		return "shop";
	}
	@GetMapping({"/listOrder"})
	public String listOrder() {
		return "listOrder";
	}
	@GetMapping({"/orderDetail"})
	public String orderDetail() {
		return "orderDetail";
	}
	@GetMapping({"/listOrderCancel"})
	public String listOrderCancel() {
		return "listOrderCancel";
	}

}
