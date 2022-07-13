package springboot.ecommerce.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Nationalized;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "product")
@Getter
@Setter
public class ProductEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private Integer quantity;

	@Nationalized
	private String description;

	private String pathImage;
	
	private String pathImage1;
	
	private String pathImage2;
	
	private String pathImage3;

	private Float unitPrice;

	private Float promotionPrice;
	
	private String brand;

	private String code;
	
	private Integer status;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate createTime;
	
	@ManyToOne
	@JoinColumn(name = "id_subCategory")
	private SubCategoryEntity subCategoryEntity;
	
	@Transient
	private MultipartFile multipartFile;
	
	@Transient
	private MultipartFile multipartFile1;
	
	@Transient
	private MultipartFile multipartFile2;
	
	@Transient
	private MultipartFile multipartFile3;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_productDetails")
	private ProductDetailsEntity productDetailsEntity;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_discount")
	private DiscountEntity discountEntity;

	@OneToMany(mappedBy = "productEntity")
	private List<OrderDetailEntity> orderDetailEntity;

	/**
	 * 
	 */
	public ProductEntity() {

	}

	@ManyToOne
	@JoinColumn(name = "id_shop")
	private ShopEntity shopEntity;


	

}
