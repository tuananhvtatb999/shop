package springboot.ecommerce.entity;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "order_detail")
@Getter
@Setter
public class OrderDetailEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private Float totalPrice;
	
	private Float totalDiscountPrice;
	
	private LocalDate createDateOrder;

	private Integer status;

	private Integer quantity;
	
	@ManyToOne
	@JoinColumn(name = "id_product")
	private ProductEntity productEntity;
	
	@ManyToOne
	@JoinColumn(name = "id_order")
	private OrderEntity orderEntity;
	
	/**
	 * 
	 */
	public OrderDetailEntity() {
		
	}
}
