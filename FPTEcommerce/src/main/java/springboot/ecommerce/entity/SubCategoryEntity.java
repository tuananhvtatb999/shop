package springboot.ecommerce.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "subcategory")
@Getter
@Setter
public class SubCategoryEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String codeSub;
	
	private String nameSub;
	
	@ManyToOne
	@JoinColumn(name = "id_category")
	private CategoryEntity category;

	@OneToMany(mappedBy = "subCategoryEntity")
	private List<ProductEntity> productEntity;
	
	/**
	 * 
	 */
	public SubCategoryEntity() {
		
	}
	
	
}
