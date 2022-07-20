package springboot.ecommerce.service;

import org.apache.commons.lang3.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import springboot.ecommerce.entity.UserEntity;
import springboot.ecommerce.repository.UserRepository;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserRepository userRepository;

    @Override
    public UserEntity saveUser(UserEntity user) {
        return userRepository.save(user);
    }

    @Override
    public List<UserEntity> findAllUser() {
        return (List<UserEntity>) userRepository.findAll();
    }

    @Override
    public UserEntity findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public UserEntity getById(Integer id) {
        if (ObjectUtils.isEmpty(id)) {
            return null;
        }
        return userRepository.getById(id);
    }

}
