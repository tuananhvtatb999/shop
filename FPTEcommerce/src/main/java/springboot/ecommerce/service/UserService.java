package springboot.ecommerce.service;

import java.util.List;

import org.springframework.stereotype.Service;

import springboot.ecommerce.entity.UserEntity;

@Service
public interface UserService {	
	UserEntity saveUser(UserEntity user);
	
	List<UserEntity> findAllUser();
	
    UserEntity findByEmail(String email);

	UserEntity getById(Integer id);
}
