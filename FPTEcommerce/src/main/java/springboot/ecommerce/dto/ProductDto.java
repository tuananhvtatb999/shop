package springboot.ecommerce.dto;

import lombok.Getter;
import lombok.Setter;
import springboot.ecommerce.entity.ProductEntity;
import springboot.ecommerce.entity.ShopEntity;

@Getter
@Setter
public class ProductDto{

	private int id;

	private String name;

	private Integer quantity;

	private String description;

	private String pathImage;
	
	private String pathImage1;
	
	private String pathImage2;
	
	private String pathImage3;

	private Float unitPrice;
	
	private Float promotionPrice;
	
	private String brand;

	private String code;
	
	private String nameShop;
	
	public ProductDto() {}
	
	public ProductDto(ProductEntity entity, ShopEntity s) {
		if(entity != null && s != null) {
			this.id = entity.getId();
			this.brand = entity.getBrand();
			this.name = entity.getName();
			this.description = entity.getDescription();
			this.pathImage = entity.getPathImage();
			this.unitPrice = entity.getUnitPrice();
			this.promotionPrice = entity.getPromotionPrice();
			this.nameShop = s.getName();
		}
	}
}
