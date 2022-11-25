package net.ausiasmarch.blogBusterSB.repository;

import net.ausiasmarch.blogBusterSB.entity.UserEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserEntity, Long> {

    boolean existsByUsername(String username);

    UserEntity findByUsernameAndPassword(String username, String password);
    
    UserEntity findByUsername(String username);
                        
    Page<UserEntity> findByNameIgnoreCaseContainingOrSurnameIgnoreCaseContainingOrLastnameIgnoreCaseContaining(String strFilterName, String strFilterSurname, String strFilterLast_name, Pageable oPageable);
    
    
}
