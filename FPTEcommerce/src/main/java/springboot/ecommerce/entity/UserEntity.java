package springboot.ecommerce.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.annotations.Nationalized;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "user1")
@Getter
@Setter
public class UserEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Pattern(regexp = "^[A-Za-z0-9]*", message = "Tên không được chứa các kí tự đặc biệt ")
	@Size(min = 10, max = 30, message = "Cho phép từ 10 đến 30 kí tự")
	@NotBlank(message = "Tên không được để trống")
	private String username;

	@NotBlank(message = "Email không được để trống")
	@Email(message = "Định dạng email không đúng")
	@Size(min = 10, max = 30, message = "Cho phép từ 10 đến 30 kí tự")
	private String email;
	
	@Size(min = 8, max = 80, message = "Cho phép từ 10 đến 30 kí tự")
	@NotBlank(message = "Mật khẩu không được để trống")
	private String password;

	private String phoneNumber;

	@Transient
	private String confirmPassword;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate createTime;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate birthDay;

	@Nationalized
	private String address;

	private Integer gender;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate updateTime;

	// submit sau nen ko co' validator
	private String path;

	// field @Transient ko tao. column trong db
	@Transient
	private MultipartFile multipartFile;

	@LazyCollection(LazyCollectionOption.FALSE)
	@ManyToMany()
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "id_user"), inverseJoinColumns = @JoinColumn(name = "id_role"))
	private List<RoleEntity> roles;

	@LazyCollection(LazyCollectionOption.FALSE)
	@ManyToMany()
	@JoinTable(name = "history_user_order", joinColumns = @JoinColumn(name = "id_user"), inverseJoinColumns = @JoinColumn(name = "id_order"))
	private List<OrderEntity> OrderEntity;

	/**
	 * 
	 */
	public UserEntity() {

	}

	@OneToOne(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	@Valid
	private ShopEntity shopEntity;

	public void addRole(RoleEntity role) {
		this.roles.add(role);
	}
}
