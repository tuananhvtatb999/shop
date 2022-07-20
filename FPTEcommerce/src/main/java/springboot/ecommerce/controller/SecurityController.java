/** 
 * @Description : Security Handle Management
 * @author  : ChuongDN
 * @history : Create new by ChuongDN : 2022/06/22 
 * */
package springboot.ecommerce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SecurityController {

	@GetMapping("/accessDenied")
	public String accessDenied() {
		return "accessDenied";
	}
}
