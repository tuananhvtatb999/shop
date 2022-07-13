package springboot.ecommerce.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class ProductSearchDto {
	private String keyWord;
	private List<String> category;
	private List<String> size;
}
