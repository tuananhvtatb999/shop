package springboot.ecommerce.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

@Table(name = "myfile")
@Entity
public class MyFileEntity implements Serializable {
	@Transient
	private static final long serialVersionUID = -1975995400692617094L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	private int id;

	@Transient
	private List<MultipartFile> multipartFile;

	private String description;

	@OneToMany(mappedBy = "myFile", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<ImageEntity> image;

	public MyFileEntity() {
		super();
	}

	public List<MultipartFile> getMultipartFile() {
		return multipartFile;
	}

	public void setMultipartFile(List<MultipartFile> multipartFile) {
		this.multipartFile = multipartFile;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<ImageEntity> getImage() {
		return image;
	}

	public void setImage(List<ImageEntity> image) {
		this.image = image;
	}

	public void add(ImageEntity img) {
		if (image == null) {
			image = new ArrayList<ImageEntity>();
		}

		image.add(img);
		img.setMyFile(this);
	}

}
