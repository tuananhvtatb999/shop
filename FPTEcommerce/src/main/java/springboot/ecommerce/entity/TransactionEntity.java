package springboot.ecommerce.entity;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "transaction1")
@Getter
@Setter
public class TransactionEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private Integer status;
	
	private String code;
	
	private LocalDate createDate;


	/**
	 * 
	 */
	public TransactionEntity() {
		
	}
	
	
}
