package springboot.ecommerce.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import springboot.ecommerce.entity.ImageEntity;
import springboot.ecommerce.entity.MyFileEntity;
import springboot.ecommerce.repository.MyFileRepository;

@Controller
public class MyFileController {

	public static final String saveDir = "resources\\images";

	@Autowired
	MyFileRepository myFileRepository;

	@GetMapping("/uploadFile")
	public String index(Model model) {
		model.addAttribute("myFileEntity", new MyFileEntity());
		return "uploadFile";
	}

	@PostMapping(value = "/uploadFile")
	public String uploadFile(@ModelAttribute MyFileEntity myFileEntity, Model model, HttpServletRequest request) {
		model.addAttribute("message", "upload success");
		model.addAttribute("description", myFileEntity.getDescription());

		String savePath = request.getServletContext().getRealPath("") + saveDir;

		try {
			List<ImageEntity> listImage = new ArrayList<ImageEntity>();
			ImageEntity imageEntity;
			List<MultipartFile> multipartFile = myFileEntity.getMultipartFile();

			for (MultipartFile fi : multipartFile) {
				imageEntity = new ImageEntity();

				String fileName = fi.getOriginalFilename();
				File file = new File(savePath, fileName);
				fi.transferTo(file);
				imageEntity.setPath("resources/images/" + fileName);
				listImage.add(imageEntity);// Only use for display next page. If not use no need to code this line
				myFileEntity.add(imageEntity);
			}

			myFileRepository.save(myFileEntity);

			model.addAttribute("listImage", listImage);

		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "upload failed");
		}
		return "uploadFile-success";
	}

	@GetMapping("/getFile/{id}")
	public String getFile(@PathVariable(name = "id", required = false) int id, Model model) {
		Optional<MyFileEntity> myFileEntity = myFileRepository.findById(id);
		if (myFileEntity.isPresent()) {
			List<ImageEntity> img = myFileEntity.get().getImage();
			model.addAttribute("listImage", img);
		}

		return "getFile";
	}
}
