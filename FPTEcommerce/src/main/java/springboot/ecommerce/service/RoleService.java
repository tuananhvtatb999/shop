package springboot.ecommerce.service;

import java.util.List;

import springboot.ecommerce.entity.RoleEntity;

public interface RoleService {
	RoleEntity saveRole(RoleEntity role);
	
	public List<RoleEntity> findAllRole();
	
	RoleEntity findByName(String name);

}
