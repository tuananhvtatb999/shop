package springboot.ecommerce.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "order1")
@Getter
@Setter
public class OrderEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private Double orderPrice;
	
	private Integer status;
	
	private LocalDate createDateOrder;
	
	@OneToMany(mappedBy = "orderEntity")
	private List<OrderDetailEntity> orderDetailEntity;

	@ManyToOne
	@JoinColumn(name = "id_user")
	private UserEntity userEntity;

	@LazyCollection(LazyCollectionOption.FALSE)
	@ManyToMany(mappedBy = "OrderEntity")
	private List<UserEntity> users;
	
	@ManyToOne
	@JoinColumn(name = "id_shop")
	private ShopEntity shopEntity;
	
	/**
	 * 
	 */
	public OrderEntity() {
		
	}
}
