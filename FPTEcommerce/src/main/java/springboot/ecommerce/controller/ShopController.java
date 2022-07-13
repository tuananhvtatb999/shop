package springboot.ecommerce.controller;

import java.io.File;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import springboot.ecommerce.entity.DiscountEntity;
import springboot.ecommerce.entity.ProductEntity;
import springboot.ecommerce.entity.ShopEntity;
import springboot.ecommerce.entity.UserEntity;
import springboot.ecommerce.service.CategoryService;
import springboot.ecommerce.service.DiscountService;
import springboot.ecommerce.service.ProductService;
import springboot.ecommerce.service.ShopService;
import springboot.ecommerce.service.SubCategoryService;
import springboot.ecommerce.service.UserService;

@Controller
@RequestMapping("/shop")
public class ShopController {

	private static int FIRST_PAGE = 1;
	public static final String saveDir = "resources\\images";
	@Autowired
	ShopService shopService;

	@Autowired
	DiscountService discountService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	SubCategoryService subCategoryService;

	@Autowired
	ProductService productService;

	@Autowired
	UserService userService;

	@GetMapping("addProduct")
	public String addProduct(Model model, HttpSession session) {
		String emailShop = (String) session.getAttribute("emailShop");
		ShopEntity shop = shopService.findByEmail(emailShop);
		session.setAttribute("idShop", shop.getId());
		model.addAttribute("product", new ProductEntity());
		model.addAttribute("subcategory", subCategoryService.getList());
		// model.addAttribute("discount", discountService.getList1());
		return "addProduct";
	}

	@PostMapping(value = "/doAddProduct")
	public String doAddProduct(Model model, @ModelAttribute(name = "product") @Valid ProductEntity product,
			HttpSession session, BindingResult result, HttpServletRequest request) {
		String path = request.getServletContext().getRealPath("");
		System.out.println(path);
		String savePath = path + saveDir;
		String email = (String) session.getAttribute("email");
		UserEntity user = userService.findByEmail(email);
		String emailShop = (String) session.getAttribute("emailShop");
		ShopEntity shop = shopService.findByEmail(emailShop);
	//	session.setAttribute(email, user);
		// Optional<ShopEntity> shop =
		// shopService.findShopById(user.getShopEntity().getId());
		// String idShop = (String) session.getAttribute("idShop");

		if (result.hasErrors()) {
			model.addAttribute("subcategory", subCategoryService.getList());
			// model.addAttribute("discount", discountService.getList());
			return "addProduct";
		}
		try {

			MultipartFile multipartFile = product.getMultipartFile();
			MultipartFile multipartFile1 = product.getMultipartFile1();
			MultipartFile multipartFile2 = product.getMultipartFile2();
			MultipartFile multipartFile3 = product.getMultipartFile3();
			String fileName = multipartFile.getOriginalFilename();
			String fileName1 = multipartFile1.getOriginalFilename();
			String fileName2 = multipartFile2.getOriginalFilename();
			String fileName3 = multipartFile3.getOriginalFilename();
//			if (!fileName.isEmpty() ) {
//
//				// tao. object File de~ chua' duong` dan~ + file name vua` upload
//				File file = new File(savePath, fileName);
//
//				// luu file vao` duong` dan~
//				multipartFile.transferTo(file);
//				multipartFile1.transferTo(file);
//				multipartFile2.transferTo(file);
//				multipartFile3.transferTo(file);
//				// set path image cho product
//				product.setPathImage("resources/images/" + fileName);
//				product.setPathImage1("resources/images/" + fileName1);
//				product.setPathImage2("resources/images/" + fileName2);
//				product.setPathImage3("resources/images/" + fileName3);
//			}
			if(!fileName.isEmpty()) {
				File file = new File(savePath, fileName);
				multipartFile.transferTo(file);
				product.setPathImage("resources/images/" + fileName);
			} 
			
			if(!fileName1.isEmpty()) {
				File file1 = new File(savePath, fileName1);
				multipartFile1.transferTo(file1);
				product.setPathImage1("resources/images/" + fileName1);
			} 		
			if(!fileName2.isEmpty()) {
				File file2 = new File(savePath, fileName2);
				multipartFile2.transferTo(file2);
				product.setPathImage2("resources/images/" + fileName2);
			}
			
			if(!fileName3.isEmpty()) {
				File file3 = new File(savePath, fileName3);
				multipartFile3.transferTo(file3);
				product.setPathImage3("resources/images/" + fileName3);
			} 
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		LocalDate date1 = LocalDate.now();
		product.setCreateTime(date1);

		// gia goc = 100 , khuyen mai 30% => gia sale ?
		// b1 : (gia goc - (gia goc * khuyen mai))
		Float soTienKm = product.getUnitPrice() * product.getDiscountEntity().getPercentz() / 100;
		product.setPromotionPrice(product.getUnitPrice() - soTienKm);
		DiscountEntity discount = product.getDiscountEntity();
		discount.setShopEntity(shop);
		product.setShopEntity(shop);
	//	product.setStatusCode(0);
		productService.saveProduct(product);
		return "redirect:/shop/listProduct";
	}

	@GetMapping("/doSearchProduct")
	public String getSearchProductPageBySearch(Model model, @RequestParam(name = "keyword") String keyword,
			@RequestParam(name = "idShop") Integer id, HttpSession session) {
		/* id = (Integer) session.getAttribute("idShop"); */
		session.setAttribute("listSearch", productService.getProductByNameOrCode(keyword, FIRST_PAGE, id).getContent());
		session.setAttribute("totalPage",
				productService.getProductByNameOrCode(keyword, FIRST_PAGE, id).getTotalPages());
		session.setAttribute("totalItems",
				productService.getProductByNameOrCode(keyword, FIRST_PAGE, id).getTotalElements());
		session.setAttribute("search", "on");
		session.setAttribute("keyword", keyword);
		return "redirect:/shop/listProduct";

	}

	@GetMapping("/listProduct")
	public String getService1(Model model, HttpSession session, Integer id) {
		id = (Integer) session.getAttribute("idShop");
		if (session.getAttribute("search") != null && session.getAttribute("search").equals("on")) {
			model.addAttribute("listProduct", session.getAttribute("listSearch"));
			model.addAttribute("totalPage", session.getAttribute("totalPage"));
			model.addAttribute("totalItems", session.getAttribute("totalItems"));
			session.removeAttribute("listSearch");
			session.removeAttribute("totalPage");
			session.removeAttribute("totalItems");
			session.removeAttribute("search");
		} else {
			id = (Integer) session.getAttribute("idShop");
			List<ProductEntity> listProduct = productService.getList1(id);
			model.addAttribute("listProduct", listProduct);
			model.addAttribute("currentPage", FIRST_PAGE);
			model.addAttribute("listProduct", productService.getProductPaging(FIRST_PAGE, id).getContent());
			model.addAttribute("totalPage", productService.getProductPaging(FIRST_PAGE, id).getTotalPages());
			model.addAttribute("totalItems", productService.getProductPaging(FIRST_PAGE, id).getTotalElements());
			session.removeAttribute("keyword");
		}

		model.addAttribute("path", "shop/listProduct");
//		id = (Integer) session.getAttribute("idShop");
//		model.addAttribute("listDiscount", discountService.getList(id));
		return "listProduct";
	}

	@GetMapping("/listProduct/{page}")
	public String getServicePaging1(Model model, @PathVariable(name = "page") int pageNum, HttpSession session,
			Integer id) {
		id = (Integer) session.getAttribute("idShop");
		String keyword = (String) session.getAttribute("keyword");
		if (keyword != null) {
			model.addAttribute("listProduct", productService.getProductByNameOrCode(keyword, pageNum, id).getContent());
			model.addAttribute("totalPage",
					productService.getProductByNameOrCode(keyword, pageNum, id).getTotalPages());
			model.addAttribute("totalItems",
					productService.getProductByNameOrCode(keyword, pageNum, id).getTotalElements());

		} else {
			id = (Integer) session.getAttribute("idShop");
			List<ProductEntity> listProduct = productService.getList1(id);
			model.addAttribute("listProduct", listProduct);
			model.addAttribute("currentPage", pageNum);
			model.addAttribute("totalPage", productService.getProductPaging(pageNum, id).getTotalPages());
			model.addAttribute("totalItems", productService.getProductPaging(pageNum, id).getTotalElements());
			model.addAttribute("listProduct", productService.getProductPaging(pageNum, id).getContent());
		}
		model.addAttribute("path", "shop/listProduct");
		return "listProduct";
	}
	
	//----------------------------------------------
	@GetMapping({ "/updateProduct" })
	public String updateRequestProduct(@RequestParam(name = "id") int id, Model model, HttpSession session) {
		Optional<ProductEntity> product = productService.getProductById(id);
		model.addAttribute("product", product.get());
		session.setAttribute("i", product.get().getPathImage());
		session.setAttribute("i1", product.get().getPathImage1());
		session.setAttribute("i2", product.get().getPathImage2());
		session.setAttribute("i3", product.get().getPathImage3());
		model.addAttribute("subcategory", subCategoryService.getList());
		return "updateProduct";
	} 
	
	@PostMapping(value = "/doUpdateProduct")
	public String doUpdateProduct(Model model, @ModelAttribute(name = "product") @Valid ProductEntity product,
			HttpSession session, BindingResult result, HttpServletRequest request) {
		String i = (String) session.getAttribute("i");
		String i1 = (String) session.getAttribute("i1");
		String i2 = (String) session.getAttribute("i2");
		String i3 = (String) session.getAttribute("i3");
		String path = request.getServletContext().getRealPath("");
		System.out.println(path);
		String savePath = path + saveDir;
		if (result.hasErrors()) {
			model.addAttribute("subcategory", subCategoryService.getList());
			// model.addAttribute("discount", discountService.getList());
			return "addProduct";
		}
		try {

			MultipartFile multipartFile = product.getMultipartFile();
			MultipartFile multipartFile1 = product.getMultipartFile1();
			MultipartFile multipartFile2 = product.getMultipartFile2();
			MultipartFile multipartFile3 = product.getMultipartFile3();
			String fileName = multipartFile.getOriginalFilename();
			String fileName1 = multipartFile1.getOriginalFilename();
			String fileName2 = multipartFile2.getOriginalFilename();
			String fileName3 = multipartFile3.getOriginalFilename();
			//File file = new File(savePath, fileName);
		//	File file1 = new File(savePath, fileName1);
		//	File file2 = new File(savePath, fileName2);
			//File file3 = new File(savePath, fileName3);
			//multipartFile.transferTo(file);
		//	multipartFile1.transferTo(file1);
		//	multipartFile2.transferTo(file2);
		//	multipartFile3.transferTo(file3);
			
//			if (!fileName1.isEmpty()) {
//				
//				// tao. object File de~ chua' duong` dan~ + file name vua` upload
//				// luu file vao` duong` dan~	
//				// set path image cho product
//				product.setPathImage("resources/images/" + fileName);
//				product.setPathImage1("resources/images/" + fileName1);
//				product.setPathImage2("resources/images/" + fileName2);
//				product.setPathImage3("resources/images/" + fileName3);
//			}
			if(!fileName.isEmpty()) {
				File file = new File(savePath, fileName);
				multipartFile.transferTo(file);
				product.setPathImage("resources/images/" + fileName);
			} else {
				product.setPathImage(i);
			}
			
			if(!fileName1.isEmpty()) {
				File file1 = new File(savePath, fileName1);
				multipartFile1.transferTo(file1);
				product.setPathImage1("resources/images/" + fileName1);
			} else {
				product.setPathImage1(i1);
			}
			
			if(!fileName2.isEmpty()) {
				File file2 = new File(savePath, fileName2);
				multipartFile2.transferTo(file2);
				product.setPathImage2("resources/images/" + fileName2);
			} else {
				product.setPathImage2(i2);
			}
			
			if(!fileName3.isEmpty()) {
				File file3 = new File(savePath, fileName3);
				multipartFile3.transferTo(file3);
				product.setPathImage3("resources/images/" + fileName3);
			} else {
				product.setPathImage3(i3);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

//		LocalDate date1 = LocalDate.now();
//		product.setCreateTime(date1);

		// gia goc = 100 , khuyen mai 30% => gia sale ?
		// b1 : (gia goc - (gia goc * khuyen mai))
		Float soTienKm = product.getUnitPrice() * product.getDiscountEntity().getPercentz() / 100;
		product.setPromotionPrice(product.getUnitPrice() - soTienKm);
		DiscountEntity discount = product.getDiscountEntity();
	//	product.setStatus(0);

		productService.saveProduct(product);
		return "redirect:/shop/listProduct";
	}
	
	@GetMapping("/deleteProduct")
	public String doDeleteProduct(Model model, @RequestParam(name = "id") int id) {
		Optional<ProductEntity> product = productService.getProductById(id);
		if (product.isPresent()) {
			productService.deleteProductById(id);;
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}
		return "redirect:/shop/listProduct";
	}
	//-------------------------------------------

	private static final Logger LOGGER = LogManager.getLogger(HandleErrorController.class);

	@GetMapping("addDiscount")
	public String addDiscount(Model model) {
		model.addAttribute("discount", new DiscountEntity());
		return "addDiscount";
	}

	@PostMapping("doAddDiscount")
	public String doAddDiscount(Model model, @ModelAttribute(name = "discount") @Valid DiscountEntity discount,
			BindingResult result, HttpSession session) {
		String emailShop = (String) session.getAttribute("emailShop");
		ShopEntity shop = shopService.findByEmail(emailShop);
		if (result.hasErrors()) {
			return "addDiscount";
		}
		discount.setShopEntity(shop);
		discountService.saveDiscount(discount);
		return "redirect:/shop/listDiscount";
	}

	@GetMapping("/doSearchDiscount")
	public String getDiscountPageBySearch(Model model, @RequestParam(name = "keyword") String keyword,
			@RequestParam(name = "idShop") Integer id, HttpSession session) {
		id = (Integer) session.getAttribute("idShop");
		session.setAttribute("listSearch",
				discountService.getDiscountByNameOrCode(keyword, FIRST_PAGE, id).getContent());
		session.setAttribute("totalPage",
				discountService.getDiscountByNameOrCode(keyword, FIRST_PAGE, id).getTotalPages());
		session.setAttribute("totalItems",
				discountService.getDiscountByNameOrCode(keyword, FIRST_PAGE, id).getTotalElements());
		session.setAttribute("search", "on");
		session.setAttribute("keyword", keyword);
		return "redirect:/shop/listDiscount";

	}

	@GetMapping("/listDiscount")
	public String getService(Model model, HttpSession session, Integer id) {
		id = (Integer) session.getAttribute("idShop");
		if (session.getAttribute("search") != null && session.getAttribute("search").equals("on")) {
			model.addAttribute("listDiscount", session.getAttribute("listSearch"));
			model.addAttribute("totalPage", session.getAttribute("totalPage"));
			model.addAttribute("totalItems", session.getAttribute("totalItems"));
			session.removeAttribute("listSearch");
			session.removeAttribute("totalPage");
			session.removeAttribute("totalItems");
			session.removeAttribute("search");
		} else {
			id = (Integer) session.getAttribute("idShop");
			List<DiscountEntity> listDiscount = discountService.getList(id);
			model.addAttribute("listDiscount", listDiscount);
			model.addAttribute("currentPage", FIRST_PAGE);
			model.addAttribute("listDiscount", discountService.getDiscountPaging(FIRST_PAGE, id).getContent());
			model.addAttribute("totalPage", discountService.getDiscountPaging(FIRST_PAGE, id).getTotalPages());
			model.addAttribute("totalItems", discountService.getDiscountPaging(FIRST_PAGE, id).getTotalElements());
			session.removeAttribute("keyword");
		}

		model.addAttribute("path", "shop/listDiscount");
//		id = (Integer) session.getAttribute("idShop");
//		model.addAttribute("listDiscount", discountService.getList(id));
		return "discountList";
	}

	@GetMapping("/listDiscount/{page}")
	public String getServicePaging(Model model, @PathVariable(name = "page") int pageNum, HttpSession session,
			Integer id) {
		id = (Integer) session.getAttribute("idShop");
		String keyword = (String) session.getAttribute("keyword");
		if (keyword != null) {
			model.addAttribute("listDiscount",
					discountService.getDiscountByNameOrCode(keyword, pageNum, id).getContent());
			model.addAttribute("totalPage",
					discountService.getDiscountByNameOrCode(keyword, pageNum, id).getTotalPages());
			model.addAttribute("totalItems",
					discountService.getDiscountByNameOrCode(keyword, pageNum, id).getTotalElements());

		} else {
			id = (Integer) session.getAttribute("idShop");
			List<DiscountEntity> listDiscount = discountService.getList(id);
			model.addAttribute("listDiscount", listDiscount);
			model.addAttribute("currentPage", pageNum);
			model.addAttribute("totalPage", discountService.getDiscountPaging(pageNum, id).getTotalPages());
			model.addAttribute("totalItems", discountService.getDiscountPaging(pageNum, id).getTotalElements());
			model.addAttribute("listDiscount", discountService.getDiscountPaging(pageNum, id).getContent());
		}
		model.addAttribute("path", "shop/listDiscount");
		return "discountList";
	}

	@GetMapping({ "/updateDiscount" })
	public String updateDiscount(@RequestParam(name = "id") int id, Model model) {
		Optional<DiscountEntity> discount = discountService.findDiscountById(id);
		model.addAttribute("discount", discount.get());
		return "updateDiscount";
	}

	@PostMapping("doUpdateDiscount")
	public String doUpdateDiscount(Model model, @ModelAttribute(name = "discount") @Valid DiscountEntity discount,
			BindingResult result) {
		// model.addAttribute("discount", new DiscountEntity());

		if (result.hasErrors()) {
			return "updateDiscount";
		}

		discountService.saveDiscount(discount);
		return "redirect:/shop/listDiscount";
	}

	@GetMapping("/deleteDiscount")
	public String doDeleteDiscount(Model model, @RequestParam(name = "id") int id) {
		Optional<DiscountEntity> discount = discountService.findDiscountById(id);
		if (discount.isPresent()) {
			discountService.delete(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}

		return "redirect:/shop/listDiscount";
	}

}
