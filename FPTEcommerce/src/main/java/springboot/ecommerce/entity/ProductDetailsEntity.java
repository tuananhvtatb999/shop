package springboot.ecommerce.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "product_details")
@Getter
@Setter
public class ProductDetailsEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String size;
	
	private String color;
	
	private String material;
	
	private Integer gender;

	@OneToMany(mappedBy = "productDetailsEntity")
	private List<ProductEntity> ProductEntity;
	
	/**
	 * 
	 */
	public ProductDetailsEntity() {
		
	}
	
	
}
