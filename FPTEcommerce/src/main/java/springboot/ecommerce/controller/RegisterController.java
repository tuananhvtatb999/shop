/** 
 * @Description : Register new customer's account
 * @author  : ChuongDN
 * @history : Create new by ChuongDN : 2022/06/01 
 * */

package springboot.ecommerce.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springboot.ecommerce.entity.RoleEntity;
import springboot.ecommerce.entity.UserEntity;
import springboot.ecommerce.service.RoleService;
import springboot.ecommerce.service.UserService;

@Controller
public class RegisterController {
	@Autowired
	UserService userService;
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@GetMapping("/register")
	public String showRegister(Model model) {
		model.addAttribute("user", new UserEntity());
		return "register";
	}
	
	@PostMapping("/doRegister")
	public String doRegister(Model model, @ModelAttribute(name = "user") @Valid UserEntity user,
			BindingResult result, @RequestParam("email") String email, @RequestParam("username") String username) {
		List<UserEntity> list = userService.findAllUser();
		for (UserEntity userEntity : list) {
	/*if (result.hasErrors() || user.getPassword().equals(user.getConfirmPassword()) == false) {
				model.addAttribute("member", member);
				model.addAttribute("message", "Passwords don't match");
				return "register";
			} else */ 
			if (result.hasErrors()) {
				return "register";
			} else if(userEntity.getEmail().equalsIgnoreCase(email))
			{
				model.addAttribute("message2", " Email " + email + "đã tồn tại!!");
				return "register";
			}
			else if (result.hasErrors() || userEntity.getUsername().equalsIgnoreCase(username)) {
				model.addAttribute("message1", " Username " + username + "đã tồn tại!!");
				return "register";
			}
		}
		
		LocalDate date1 = LocalDate.now();
		user.setCreateTime(date1);
		
		// Set role
		List<RoleEntity> listRole = roleService.findAllRole();
		listRole.removeIf(n -> !(n.getName().equalsIgnoreCase("ROLE_CUSTOMER")));
		user.setRoles(listRole);
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userService.saveUser(user);
		return "redirect:/login";
	}
	
	@GetMapping({ "/login" })
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/email", method = RequestMethod.GET)
	public String currentEmail(Principal principal) {
		return principal.getName();
	}
	
	@GetMapping({ "/test2" })
	public String login1() {
		return "test2";
	}
	
	@GetMapping("/checkRole")
	public String checkRole(HttpServletRequest request) {
		if (request.isUserInRole("ROLE_ADMIN")) {
			return "redirect:/admin/mainAdmin";
		}
		return "redirect:/home";
	}
	
//	@GetMapping(value = "/logout")
//	public String logout(HttpSession session) {
//		session.invalidate();
//		return "redirect:/home";
//	}
	
}
