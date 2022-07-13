/** 
 * @Description : Admin Management
 * @author  : ChuongDN
 * @history : Create new by ChuongDN : 2022/05/25 
 * */
package springboot.ecommerce.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springboot.ecommerce.entity.CategoryEntity;
import springboot.ecommerce.entity.ProductEntity;
import springboot.ecommerce.entity.ShopEntity;
import springboot.ecommerce.entity.SubCategoryEntity;
import springboot.ecommerce.service.CategoryService;
import springboot.ecommerce.service.ProductService;
import springboot.ecommerce.service.ShopService;
import springboot.ecommerce.service.SubCategoryService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	CategoryService categoryService;

	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	ShopService shopService;
	
	@Autowired
	ProductService productService;

	int rs = 0;

	
	@GetMapping("/testRole")
	public String testRole() {
		return "testRole";
	}

	@GetMapping("/mainAdmin")
	public String testRole1() {
		return "MainAdmin";
	}

	/**
	 * Name Function : add Category Author : ChuongDN Date Create : 2022/05/25
	 * Description : add Category for admin role
	 **/
	@GetMapping("/addCategory")
	public String addCategory(Model model) {
		model.addAttribute("category", new CategoryEntity());
		return "addCategory";
	}

	/**
	 * Name Function : add Category Author : ChuongDN Date Create : 2022/05/25
	 * Description : add Category for admin role
	 **/
	@PostMapping(value = "/doAddCategory")
	public String doAddCategory(Model model, @ModelAttribute(name = "category") @Valid CategoryEntity category,
			BindingResult result, @RequestParam("name") String name, @RequestParam("code") String code) {
		if (result.hasErrors()) {
			return "addCategory";
		}

		rs = categoryService.checkDupCategory(name, code);

		if (rs > 0) {
			model.addAttribute("message", "Code or Name exist in system");
			return "addCategory";
		}

		categoryService.saveCategoryEntity(category);
		return "redirect:/admin/listCategory";
	}

	private static int FIRST_PAGE = 1;

	/**
	 * Name Function : search Category Author : ChuongDN Date Create : 2022/05/25
	 * Description : search Category for admin role
	 **/
	@GetMapping("/doSearchCategory")
	public String getCustomerPageBySearch(Model model, @RequestParam(name = "keyword") String keyword,
			HttpSession session) {
		session.setAttribute("listSearch", categoryService.getCategoryByName(keyword, FIRST_PAGE).getContent());
		session.setAttribute("totalPage", categoryService.getCategoryByName(keyword, FIRST_PAGE).getTotalPages());
		session.setAttribute("totalItems", categoryService.getCategoryByName(keyword, FIRST_PAGE).getTotalElements());
		session.setAttribute("search", "on");
		session.setAttribute("keyword", keyword);
		return "redirect:/admin/listCategory";

	}

	/**
	 * Name Function : show list Category Author : ChuongDN Date Create : 2022/05/25
	 * Description : show list Category for admin role
	 **/
	@GetMapping("/listCategory")
	public String getService(Model model, HttpSession session) {
		if (session.getAttribute("search") != null && session.getAttribute("search").equals("on")) {
			model.addAttribute("listCategory", session.getAttribute("listSearch"));
			model.addAttribute("totalPage", session.getAttribute("totalPage"));
			model.addAttribute("totalItems", session.getAttribute("totalItems"));
			session.removeAttribute("listSearch");
			session.removeAttribute("totalPage");
			session.removeAttribute("totalItems");
			session.removeAttribute("search");
		} else {
			List<CategoryEntity> listCategory = categoryService.getList();
			model.addAttribute("listCategory", listCategory);
			model.addAttribute("currentPage", FIRST_PAGE);
			model.addAttribute("listCategory", categoryService.getProductsPaging(FIRST_PAGE).getContent());
			model.addAttribute("totalPage", categoryService.getProductsPaging(FIRST_PAGE).getTotalPages());
			model.addAttribute("totalItems", categoryService.getProductsPaging(FIRST_PAGE).getTotalElements());
			session.removeAttribute("keyword");
		}

		model.addAttribute("path", "admin/listCategory");
		return "listCategory";
	}

	/**
	 * Name Function : show list Category by page Author : ChuongDN Date Create :
	 * 2022/05/30 Description : show list Category for admin role
	 **/
	@GetMapping("/listCategory/{page}")
	public String getServicePaging(Model model, @PathVariable(name = "page") int pageNum, HttpSession session) {

		String keyword = (String) session.getAttribute("keyword");
		if (keyword != null) {
			model.addAttribute("listCategory", categoryService.getCategoryByName(keyword, pageNum).getContent());
			model.addAttribute("totalPage", categoryService.getCategoryByName(keyword, pageNum).getTotalPages());
			model.addAttribute("totalItems", categoryService.getCategoryByName(keyword, pageNum).getTotalElements());

		} else {
			List<CategoryEntity> listCategory = categoryService.getList();
			model.addAttribute("listCategory", listCategory);
			model.addAttribute("currentPage", pageNum);
			model.addAttribute("totalPage", categoryService.getProductsPaging(pageNum).getTotalPages());
			model.addAttribute("totalItems", categoryService.getProductsPaging(pageNum).getTotalElements());
			model.addAttribute("listCategory", categoryService.getProductsPaging(pageNum).getContent());
		}
		model.addAttribute("path", "admin/listCategory");
		return "listCategory";
	}

	/**
	 * Name Function : update Category Author : ChuongDN Date Create : 2022/06/02
	 * Description : update Category for admin role
	 **/
	@GetMapping({ "/updateCategory" })
	public String updateCategory(@RequestParam(name = "id") int id, Model model) {
		Optional<CategoryEntity> category = categoryService.findCategoryById(id);
		model.addAttribute("category", category.get());
		return "updateCategory";
	}

	/**
	 * Name Function : update Category Author : ChuongDN Date Create : 2022/06/02
	 * Description : update Category for admin role
	 **/
	@PostMapping(value = "/doUpdateCategory")
	public String doUpdateCategory(Model model, @ModelAttribute(name = "category") @Valid CategoryEntity category,
			BindingResult result, @RequestParam("name") String name, @RequestParam("code") String code) {
		if (result.hasErrors()) {
			return "updateCategory";
		}
//		rs = categoryService.checkDupCategory(name, code);
//
//		if (rs > 0) {
//			model.addAttribute("message", "Code or Name exist in system");
//			return "addCategory";
//		}
		categoryService.saveCategoryEntity(category);
		return "redirect:/admin/listCategory";
	}

	/**
	 * Name Function : delete Category Author : ChuongDN Date Create : 2022/06/02
	 * Description : delete Category for admin role
	 **/
	@GetMapping("/deleteCategory")
	public String doDeleteCategory(Model model, @RequestParam(name = "id") int id) {
		Optional<CategoryEntity> category = categoryService.findCategoryById(id);
		if (category.isPresent()) {
			categoryService.delete(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}
		// hien thi list hotel da luu trong database
		return "redirect:/admin/listCategory";
	}

	/**
	 * Name Function : add sub Category Author : ChuongDN Date Create : 2022/06/03
	 * Description : add sub Category for admin role
	 **/
	@GetMapping("/addSubCategory")
	public String addSubCategory(Model model) {
		model.addAttribute("subcategory", new SubCategoryEntity());
		model.addAttribute("category", categoryService.getList());
		return "addSubCategory";
	}

	/**
	 * Name Function : add sub Category Author : ChuongDN Date Create : 2022/06/03
	 * Description : add sub Category for admin role
	 **/
	@PostMapping(value = "/doAddSubCategory")
	public String doAddSubCategory(Model model,
			@ModelAttribute(name = "subcategory") @Valid SubCategoryEntity subcategory, BindingResult result,
			@RequestParam("nameSub") String nameSub, @RequestParam("codeSub") String codeSub) {
		if (result.hasErrors()) {
			model.addAttribute("category", categoryService.getList());
			return "addSubCategory";
		}

		rs = subCategoryService.checkDupSubCategory(nameSub, codeSub);

		if (rs > 0) {
			model.addAttribute("message", "Code or Name exist in system");
			model.addAttribute("category", categoryService.getList());
			return "addSubCategory";
		}

		subCategoryService.saveSubCategoryEntity(subcategory);
		return "redirect:/admin/listSubCategory";
	}

	/**
	 * Name Function : search sub Category Author : ChuongDN Date Create :
	 * 2022/06/04 Description : search sub Category for admin role
	 **/
	@GetMapping("/doSearchSubCategory")
	public String getCustomerPageBySearch1(Model model, @RequestParam(name = "keyword") String keyword,
			HttpSession session) {
		session.setAttribute("listSearch", subCategoryService.getSubCategoryByName(keyword, FIRST_PAGE).getContent());
		session.setAttribute("totalPage", subCategoryService.getSubCategoryByName(keyword, FIRST_PAGE).getTotalPages());
		session.setAttribute("totalItems",
				subCategoryService.getSubCategoryByName(keyword, FIRST_PAGE).getTotalElements());
		session.setAttribute("search", "on");
		session.setAttribute("keyword", keyword);
		return "redirect:/admin/listSubCategory";

	}

	/**
	 * Name Function : show sub Category Author : ChuongDN Date Create : 2022/06/04
	 * Description : show sub Category for admin role
	 **/
	@GetMapping("/listSubCategory")
	public String getService1(Model model, HttpSession session) {
		if (session.getAttribute("search") != null && session.getAttribute("search").equals("on")) {
			model.addAttribute("listSubCategory", session.getAttribute("listSearch"));
			model.addAttribute("totalPage", session.getAttribute("totalPage"));
			model.addAttribute("totalItems", session.getAttribute("totalItems"));
			session.removeAttribute("listSearch");
			session.removeAttribute("totalPage");
			session.removeAttribute("totalItems");
			session.removeAttribute("search");
		} else {
			List<SubCategoryEntity> listSubCategory = subCategoryService.getList();
			model.addAttribute("listSubCategory", listSubCategory);
			model.addAttribute("currentPage", FIRST_PAGE);
			model.addAttribute("listSubCategory", subCategoryService.getProductsPaging(FIRST_PAGE).getContent());
			model.addAttribute("totalPage", subCategoryService.getProductsPaging(FIRST_PAGE).getTotalPages());
			model.addAttribute("totalItems", subCategoryService.getProductsPaging(FIRST_PAGE).getTotalElements());
			session.removeAttribute("keyword");
		}

		model.addAttribute("path", "admin/listSubCategory");
		return "listSubCategory";
	}

	/**
	 * Name Function : show sub Category by page Author : ChuongDN Date Create :
	 * 2022/06/05 Description : show sub Category for admin role
	 **/
	@GetMapping("/listSubCategory/{page}")
	public String getServicePaging1(Model model, @PathVariable(name = "page") int pageNum, HttpSession session) {
		String keyword = (String) session.getAttribute("keyword");

		if (keyword != null) {
			model.addAttribute("listSubCategory",
					subCategoryService.getSubCategoryByName(keyword, pageNum).getContent());
			model.addAttribute("totalPage", subCategoryService.getSubCategoryByName(keyword, pageNum).getTotalPages());
			model.addAttribute("totalItems",
					subCategoryService.getSubCategoryByName(keyword, pageNum).getTotalElements());

		} else {
			List<SubCategoryEntity> listSubCategory = subCategoryService.getList();
			model.addAttribute("listSubCategory", listSubCategory);
			model.addAttribute("currentPage", pageNum);
			model.addAttribute("totalPage", subCategoryService.getProductsPaging(pageNum).getTotalPages());
			model.addAttribute("totalItems", subCategoryService.getProductsPaging(pageNum).getTotalElements());
			model.addAttribute("listSubCategory", subCategoryService.getProductsPaging(pageNum).getContent());
		}

		model.addAttribute("path", "admin/listSubCategory");
		return "listSubCategory";
	}

	/**
	 * Name Function : update sub Category Author : ChuongDN Date Create :
	 * 2022/06/05 Description : update sub Category for admin role
	 **/
	@GetMapping({ "/updateSubCategory" })
	public String updateSubCategory(@RequestParam(name = "id") int id, Model model) {
		Optional<SubCategoryEntity> subcategory = subCategoryService.findSubCategoryById(id);
		model.addAttribute("subcategory", subcategory.get());
		model.addAttribute("category", categoryService.getList());
		return "updateSubCategory";
	}

	/**
	 * Name Function : update sub Category Author : ChuongDN Date Create :
	 * 2022/06/05 Description : update sub Category for admin role
	 **/
	@PostMapping(value = "/doUpdateSubCategory")
	public String doUpdateSubCategory(Model model,
			@ModelAttribute(name = "subcategory") @Valid SubCategoryEntity subcategory, BindingResult result,
			@RequestParam("nameSub") String nameSub, @RequestParam("codeSub") String codeSub) {
		if (result.hasErrors()) {
			model.addAttribute("category", categoryService.getList());
			return "updateSubCategory";
		}
		subCategoryService.saveSubCategoryEntity(subcategory);
		return "redirect:/admin/listSubCategory";
	}

	/**
	 * Name Function : delete sub Category Author : ChuongDN Date Create :
	 * 2022/06/05 Description : delete sub Category for admin role
	 **/
	@GetMapping("/deleteSubCategory")
	public String doDeleteSubCategory(Model model, @RequestParam(name = "id") int id) {
		Optional<SubCategoryEntity> subcategory = subCategoryService.findSubCategoryById(id);
		if (subcategory.isPresent()) {
			subCategoryService.delete(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}
		// hien thi list hotel da luu trong database
		return "redirect:/admin/listSubCategory";
	}

	/**
	 * Name Function : show sub Category Author : ChuongDN Date Create : 2022/06/04
	 * Description : show sub Category for admin role
	 **/
	@GetMapping("/requestShop")
	public String getShopList(Model model, HttpSession session) {
		List<ShopEntity> shop = shopService.getListByStatus();
		model.addAttribute("shop", shop);
		return "requestShop";
	}
	
	@GetMapping({ "/updateShopStatus" })
	public String updateShopStatus(@RequestParam(name = "id") int id, Model model, HttpSession session) {
		Optional<ShopEntity> shopEntity = shopService.findShopById(id);
		model.addAttribute("shopEntity", shopEntity.get());
	//	model.addAttribute("category", categoryService.getList());
		session.setAttribute("id", shopEntity.get().getId());
		return "updateRequestShop";
	}
	
	@PostMapping(value = "/doUpdateShopStatus")
	public ResponseEntity<String> doUpdateShopStatus(@RequestBody String data){
		JSONObject json = new JSONObject(data);
	    shopService.updateShopStatus(json.getInt("id"), json.getInt("status"));
	    return ResponseEntity.ok("200");
	}
	
	/**
	 * Name Function : showw request Product 
	 * Author : TrongLd Date Create : 2022/07/07
	 * Description : show request Product for admin role
	 **/
	
	@GetMapping("/requestProduct")
	public String getListProduct(Model model, HttpSession session) {
		if (session.getAttribute("search") != null && session.getAttribute("search").equals("on")) {
			model.addAttribute("listProduct", session.getAttribute("listSearch"));
			model.addAttribute("totalPage", session.getAttribute("totalPage"));
			model.addAttribute("totalItems", session.getAttribute("totalItems"));
			session.removeAttribute("listSearch");
			session.removeAttribute("totalPage");
			session.removeAttribute("totalItems");
			session.removeAttribute("search");
		} else {
			
			List<ProductEntity> listProduct = productService.getListByStatus();
			model.addAttribute("listProduct", listProduct);
			model.addAttribute("currentPage", FIRST_PAGE);
			model.addAttribute("listProduct", productService.getProductsPaging1(FIRST_PAGE).getContent());
			model.addAttribute("totalPage", productService.getProductsPaging1(FIRST_PAGE).getTotalPages());
			model.addAttribute("totalItems", productService.getProductsPaging1(FIRST_PAGE).getTotalElements());
			session.removeAttribute("keyword");
		}

		model.addAttribute("path", "admin/requestProduct");
		return "requestProduct";
	}
	
	@GetMapping("/requestProduct/{page}")
	public String getServicePagingProduct(Model model, @PathVariable(name = "page") int pageNum, HttpSession session) {
		String keyword = (String) session.getAttribute("keyword");

		if (keyword != null) {
			model.addAttribute("listProduct",
					productService.getProductByNameOrCode(keyword, pageNum).getContent());
			model.addAttribute("totalPage", productService.getProductByNameOrCode(keyword, pageNum).getTotalPages());
			model.addAttribute("totalItems", productService.getProductByNameOrCode(keyword, pageNum).getTotalElements());

		} else {
			List<ProductEntity> listProduct = productService.getListByStatus();
			model.addAttribute("listProduct", listProduct);
			model.addAttribute("currentPage", pageNum);
			model.addAttribute("totalPage", productService.getProductsPaging1(pageNum).getTotalPages());
			model.addAttribute("totalItems", productService.getProductsPaging1(pageNum).getTotalElements());
			model.addAttribute("listProduct", productService.getProductsPaging1(pageNum).getContent());
		}

		model.addAttribute("path", "admin/requestProduct");
		return "requestProduct";
	}
	
	@GetMapping("/doSearchProduct")
	public String getSearchProductPageBySearch(Model model, @RequestParam(name = "keyword") String keyword, HttpSession session) {
		session.setAttribute("listSearch", productService.getProductByNameOrCode(keyword, FIRST_PAGE).getContent());
		session.setAttribute("totalPage", productService.getProductByNameOrCode(keyword, FIRST_PAGE).getTotalPages());
		session.setAttribute("totalItems", productService.getProductByNameOrCode(keyword, FIRST_PAGE).getTotalElements());
		session.setAttribute("search", "on");
		session.setAttribute("keyword", keyword);
		return "redirect:/admin/requestProduct";
	}
	
	/**
	 * Name Function : update request Product Author : TrongLd Date Create :2022/07/07
	 * Description : update request Product for admin role
	 **/
	@GetMapping({ "/updateRequestProduct" })
	public String updateRequestProduct(@RequestParam(name = "id") int id, Model model, HttpSession session) {
		Optional<ProductEntity> product = productService.getProductById(id);
		model.addAttribute("product", product.get());
		session.setAttribute("id", product.get().getId());
		return "updateRequestProduct";
	}
	
	@PostMapping(value = "/doUpdateProductStatus")
	public ResponseEntity<String> doUpdateProductStatus(@RequestBody String data){
		JSONObject json = new JSONObject(data);
		productService.updateProductStatus(json.getInt("id"), json.getInt("status"));
	    return ResponseEntity.ok("200");
	}
	
}
