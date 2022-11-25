package net.ausiasmarch.blogBusterSB.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import net.ausiasmarch.blogBusterSB.entity.UserEntity;
import net.ausiasmarch.blogBusterSB.exception.CannotPerformOperationException;
import net.ausiasmarch.blogBusterSB.exception.ResourceNotFoundException;
import net.ausiasmarch.blogBusterSB.exception.ResourceNotModifiedException;
import net.ausiasmarch.blogBusterSB.exception.ValidationException;
import net.ausiasmarch.blogBusterSB.helper.RandomHelper;
import net.ausiasmarch.blogBusterSB.helper.ValidationHelper;
import net.ausiasmarch.blogBusterSB.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository oUserRepository;

    private final List<String> names = List.of("Ainhoa", "Kevin", "Estefania", "Cristina",
           "Jose Maria", "Lucas Ezequiel", "Carlos", "Elliot", "Alexis", "Ruben", "Luis Fernando", "Karim", "Luis",
           "Jose David", "Nerea", "Ximo", "Iris", "Alvaro", "Mario", "Raimon");

    private final List<String> surnames = List.of("Benito", "Blanco", "Boriko", "Carrascosa", "Guerrero", "Gyori",
           "Lazaro", "Luque", "Perez", "Perez", "Perez", "Rezgaoui", "Rodríguez", "Rosales", "Soler", "Soler", "Suay", "Talaya", "Tomas", "Vilar");

    private final List<String> last_names = List.of("Sanchis", "Bañuls", "Laenos", "Torres", "Sanchez", "Gyori",
           "Luz", "Pascual", "Blayimir", "Castello", "Hurtado", "Mourad", "Fernández", "Ríos", "Benavent", "Benavent", "Patricio", "Romance", "Zanon", "Morera");

    private final String BLOGBUSTER_DEFAULT_PASSWORD = "2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d";

    @Autowired
    public UserService(UserRepository oUserRepository) {
        this.oUserRepository = oUserRepository;
    }

    public void validate(Long id) {
        if (!oUserRepository.existsById(id)) {
            throw new ResourceNotFoundException("id " + id + " not exist");
        }
    }

    public void validate(UserEntity oUserEntity) {
        ValidationHelper.validateStringLength(oUserEntity.getName(), 2, 50, "user field (2 to 50 chars length)");
        ValidationHelper.validateStringLength(oUserEntity.getSurname(), 2, 50, "surname field (2 to 50 chars length)");
        ValidationHelper.validateStringLength(oUserEntity.getLastname(), 2, 50, "lastname field (2 to 50 chars length)");
        ValidationHelper.validateEmail(oUserEntity.getEmail(), "email field");
        ValidationHelper.validateLogin(oUserEntity.getUsername(), "username field");
    }

    public UserEntity get(Long id) {
        //oAuthService.OnlyAdmins();
        return oUserRepository.findById(id)
               .orElseThrow(() -> new ResourceNotFoundException("developer with id: " + id + " not found"));
    }

    public Page<UserEntity> getPage(Pageable oPageable, String strFilter) {
        //oAuthService.OnlyAdmins();
        ValidationHelper.validateRPP(oPageable.getPageSize());
        if (strFilter == null || strFilter.length() == 0) {
            return oUserRepository.findAll(oPageable);
        } else {
            return oUserRepository.findByNameIgnoreCaseContainingOrSurnameIgnoreCaseContainingOrLastnameIgnoreCaseContaining(strFilter, strFilter, strFilter, oPageable);
        }
    }

    public Long count() {
        //oAuthService.OnlyAdmins();
        return oUserRepository.count();
    }

    public Long update(UserEntity oUserEntity) {
        //oAuthService.OnlyAdmins();
        validate(oUserEntity.getId());
        validate(oUserEntity);
        UserEntity oUserEntityOld = oUserRepository.getById(oUserEntity.getId());
        oUserEntity.setPassword(oUserEntityOld.getPassword());
        return oUserRepository.save(oUserEntity).getId();
    }

    public Long create(UserEntity oNewUserEntity) {
        //oAuthService.OnlyAdmins();
        validate(oNewUserEntity);
        if (oUserRepository.existsByUsername(oNewUserEntity.getUsername())) {
            throw new ValidationException("username repeated");
        }
        oNewUserEntity.setPassword(BLOGBUSTER_DEFAULT_PASSWORD);
        oNewUserEntity.setId(0L);
        return oUserRepository.save(oNewUserEntity).getId();
    }

    public Long delete(Long id) {
        //oAuthService.OnlyAdmins();
        validate(id);
        oUserRepository.deleteById(id);
        if (oUserRepository.existsById(id)) {
            throw new ResourceNotModifiedException("can't remove register " + id);
        } else {
            return id;
        }
    }

    public UserEntity getOneRandom() {
        if (count() > 0) {
            List<UserEntity> oDevelopers = oUserRepository.findAll();
            return oUserRepository.getById(oDevelopers.get(RandomHelper.getRandomInt(0, oDevelopers.size() - 1)).getId());
        } else {
            throw new CannotPerformOperationException("ho hay usuarios en la base de datos");
        }
    }

    private UserEntity generateUser() {
        UserEntity oUserEntity = new UserEntity();

        oUserEntity.setName(names.get(RandomHelper.getRandomInt(0, names.size() - 1)));
        oUserEntity.setSurname(surnames.get(RandomHelper.getRandomInt(0, names.size() - 1)));
        oUserEntity.setLastname(last_names.get(RandomHelper.getRandomInt(0, names.size() - 1)));

        oUserEntity.setUsername((oUserEntity.getName().toLowerCase().substring(1, 3)
               + oUserEntity.getSurname().toLowerCase().substring(2, 4)
               + oUserEntity.getLastname().toLowerCase().substring(2, 4)).replaceAll("\\s", ""));

        oUserEntity.setEmail(oUserEntity.getUsername() + "@blogbuster.net");

        oUserEntity.setPassword(BLOGBUSTER_DEFAULT_PASSWORD);

        return oUserEntity;
    }

    public UserEntity generateOne() {
        //oAuthService.OnlyAdmins();
        return oUserRepository.save(generateUser());
    }

    public Long generateSome(Long amount) {
        //oAuthService.OnlyAdmins();
        List<UserEntity> developerToSave = new ArrayList<>();
        for (int i = 0; i < amount; i++) {
            developerToSave.add(generateUser());
        }
        oUserRepository.saveAll(developerToSave);
        return oUserRepository.count();
    }
}
