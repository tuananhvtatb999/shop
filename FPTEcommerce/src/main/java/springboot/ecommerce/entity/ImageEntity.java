package springboot.ecommerce.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "image")
public class ImageEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String path;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "myFile_id")
	private MyFileEntity myFile;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public MyFileEntity getMyFile() {
		return myFile;
	}

	public void setMyFile(MyFileEntity myFile) {
		this.myFile = myFile;
	}

	public ImageEntity() {
		super();
// TODO Auto-generated constructor stub
	}

}
