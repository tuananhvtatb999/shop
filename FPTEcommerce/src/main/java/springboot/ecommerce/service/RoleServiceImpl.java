package springboot.ecommerce.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springboot.ecommerce.entity.RoleEntity;
import springboot.ecommerce.repository.RoleRepository;

@Service
public class RoleServiceImpl implements RoleService{
	@Autowired
	RoleRepository roleRepository;

	@Override
	public RoleEntity saveRole(RoleEntity role) {
		return roleRepository.save(role);
	}

	@Override
	public List<RoleEntity> findAllRole() {
		return (List<RoleEntity>) roleRepository.findAll();
	}

	@Override
	public RoleEntity findByName(String name) {
		
		return roleRepository.findByName(name);
	}
	


}




