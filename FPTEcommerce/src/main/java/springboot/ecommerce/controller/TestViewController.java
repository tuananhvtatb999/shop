/** 
 * @Description : test file
 * @author  : ChuongDN
 * @history : Create new by ChuongDN : 2022/05/25 
 * */
package springboot.ecommerce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestViewController {
	

	
	@GetMapping({"/orderProduct"})
	public String detail() {
		return "orderProduct";
	}
	
	
	@GetMapping({"/requestShop"})
	public String detail1() {
		return "requestShop";
	}
	
//	@GetMapping({"/productList"})
//	public String detail2() {
//		return "listProduct";
//	}
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
