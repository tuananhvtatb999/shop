/** 
 * @Description : Customer Management
 * @author  : ChuongDN
 * @history : Create new by ChuongDN : 2022/06/20 
 * */
package springboot.ecommerce.controller;

import java.io.File;
import java.security.Principal;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import springboot.ecommerce.entity.RoleEntity;
import springboot.ecommerce.entity.ShopEntity;
import springboot.ecommerce.entity.UserEntity;
import springboot.ecommerce.service.RoleService;
import springboot.ecommerce.service.ShopService;
import springboot.ecommerce.service.UserService;

@Controller
@RequestMapping("/customer")
public class UserDetailController {
	
	public static final String saveDir = "resources\\images";
	
	@Autowired
	UserService userService;
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	ShopService shopService;
	
	@Autowired
	PasswordEncoder passwordEncoder;

	@GetMapping({ "/updatePassword" })
	public String updatePassword(HttpSession session, Principal principal, Model model) {
		if (principal != null && principal.getName() != null && !"".equals(principal.getName())) {
			session.setAttribute("email", principal.getName());
		}

		String email = (String) session.getAttribute("email");
		UserEntity user1 = userService.findByEmail(email);
		Optional<UserEntity> user = Optional.of(userService.findByEmail(email));
		session.setAttribute("user1", user1);
		session.setAttribute("id", user1.getId());
		session.setAttribute("password1", user1.getPassword());
			
		model.addAttribute("user", user);
		return "changePassword";
	}
	
	@PostMapping(value = "/doUpdatePassword")
	public String doUpdatePassword(Model model, @ModelAttribute(name = "user") @Valid UserEntity user,
			@RequestParam(name = "passwordOld") String passwordOld,@RequestParam(name = "confirmPassword") String confirmPassword,@RequestParam(name = "password") String password,BindingResult result, HttpSession session) {
		String passwordOld1 = (String) session.getAttribute("password1");
		
		if(passwordEncoder.matches(passwordOld, passwordOld1) == false) {
			model.addAttribute("message", "Pass cu khong giong");
			return "changePassword";
		}
		
		if(password.equalsIgnoreCase(confirmPassword) == false) {
			model.addAttribute("message1", "Passwords don't match");
			return "changePassword";
		}
		
		if(passwordEncoder.matches(password, passwordOld1) == true) {
			model.addAttribute("message2", "khong duoc giong pass cu");
			return "changePassword";
		}
		
		if (result.hasErrors()) {			
			return "changePassword";
		}
		
		String passwordNew = passwordEncoder.encode(password);
		List<RoleEntity> listRole = roleService.findAllRole();
		listRole.removeIf(n -> !(n.getName().equalsIgnoreCase("ROLE_CUSTOMER")));
		user.setRoles(listRole);
		user.setPassword(passwordNew);
		userService.saveUser(user);
		model.addAttribute("message3", "Thay doi password thanh cong");
		return "changePassword";
	}
	
	@GetMapping({ "/updateProfile" })
	public String updateProfile(HttpSession session, Principal principal, Model model) {
		if (principal != null && principal.getName() != null && !"".equals(principal.getName())) {
			session.setAttribute("email", principal.getName());
		}

		String email = (String) session.getAttribute("email");
		UserEntity user1 = userService.findByEmail(email);
		Optional<UserEntity> user = Optional.of(userService.findByEmail(email));
		session.setAttribute("user1", user1);
		session.setAttribute("id", user1.getId());
		session.setAttribute("password1", user1.getPassword());
		session.setAttribute("path", user1.getPath());
		session.setAttribute("username", user1.getUsername());
		
		model.addAttribute("user", user);
		return "userInfo";
	}
	
	@PostMapping(value = "/doUpdateProfile")
	public String doUpdateProfile(Model model, @ModelAttribute(name = "user") @Valid UserEntity user,
			BindingResult result, HttpSession session, HttpServletRequest request) {	
		String fileOld = (String) session.getAttribute("path");
		if (result.hasErrors()) {			
			return "userInfo";
		}
		// Upload file
		String path = request.getServletContext().getRealPath("");
		System.out.println(path);
		String savePath = path + saveDir;
		try {

			MultipartFile multipartFile = user.getMultipartFile();
			String fileName = multipartFile.getOriginalFilename();
			if (!fileName.isEmpty()) {
				
				// tao. object File de~ chua' duong` dan~ + file name vua` upload
				File file = new File(savePath, fileName);
				
				// luu file vao` duong` dan~
				multipartFile.transferTo(file);
				// set path image cho product
				user.setPath("resources/images/" + fileName);
				
			} else {
				user.setPath(fileOld);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// product chua save se~ co' id = 0
		if (user.getId() == 0) {
			userService.saveUser(user);
			session.setAttribute("message", "Your product has been created!");
			return "#";
		}
		
		List<RoleEntity> listRole = roleService.findAllRole();
		listRole.removeIf(n -> !(n.getName().equalsIgnoreCase("ROLE_CUSTOMER")));
		user.setRoles(listRole);
		System.out.println(user.getAddress());
		userService.saveUser(user);
		return "redirect:/customer/updatePassword";
	}
	
	
	@GetMapping({"/registerShop"})
	public String regisShop(Model model,HttpSession session, Principal principal) {
		
		String emailShop = (String) session.getAttribute("emailShop");
		ShopEntity shop = shopService.findByEmail(emailShop);
		if(shop != null) {
			return "redirect:/shop/addProduct";	
		}
		
		if (principal != null && principal.getName() != null && !"".equals(principal.getName())) {
			session.setAttribute("email", principal.getName());			
		}
		
		String email = (String) session.getAttribute("email");
		UserEntity user1 = userService.findByEmail(email);
		session.setAttribute("id", user1.getId());
		model.addAttribute("shop", new ShopEntity());
		return "regisShop";
	}
	
	@PostMapping("/doRegisterShop")
	public String doRegisterShop(Model model, @ModelAttribute(name = "shop") @Valid ShopEntity shop,
			BindingResult result, @RequestParam("name") String name, HttpSession session) {
		int rs = shopService.checkDupShop(name);
		String email = (String) session.getAttribute("email");
		String emailShop = (String) session.getAttribute("emailShop");
		UserEntity user1 = userService.findByEmail(email);
	//	int id = (int) session.getAttribute("id");
		if(rs != 0) {
			model.addAttribute("message1", " Tên shop đã tồn tại, vui lòng chọn tên khác !!!");
			return "regisShop";
		}
		
		if (result.hasErrors()) {			
			return "regisShop";
		}
	
		shop.setEmail(emailShop);
		shop.setStatus(0);
		shop.setUserEntity(user1);
		shopService.saveShopEntity(shop);
	//	List<RoleEntity> listRole = roleService.findAllRole();
	//	listRole.removeIf(n -> !(n.getName().equalsIgnoreCase("ROLE_SHOP")));
	//	RoleEntity roleCustomer = roleService.findByName("ROLE_CUSTOMER");
		RoleEntity roleShop = roleService.findByName("ROLE_SHOP");
	//	user1.addRole(roleCustomer);
		user1.addRole(roleShop);		
		userService.saveUser(user1);
		return "redirect:/logout";
	}
	
}
