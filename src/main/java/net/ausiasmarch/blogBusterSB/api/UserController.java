package net.ausiasmarch.blogBusterSB.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import net.ausiasmarch.blogBusterSB.entity.UserEntity;
import net.ausiasmarch.blogBusterSB.service.UserService;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping("/user")
public class UserController {

    private final UserService oUserService;

    @Autowired
    public UserController(UserService oUserService) {
        this.oUserService = oUserService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<UserEntity> get(@PathVariable(value = "id") Long id) {
        return new ResponseEntity<>(oUserService.get(id), HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<Page<UserEntity>> getPage(
           @PageableDefault(page = 0, size = 10, direction = Sort.Direction.DESC) Pageable oPageable,
           @RequestParam(name = "filter", required = false) String strFilter) {
        return new ResponseEntity<>(oUserService.getPage(oPageable, strFilter), HttpStatus.OK);
    }

    @GetMapping("/count")
    public ResponseEntity<Long> count() {
        return new ResponseEntity<Long>(oUserService.count(), HttpStatus.OK);
    }

    @PutMapping
    public ResponseEntity<Long> update(@RequestBody UserEntity oUserEntity) {
        return new ResponseEntity<Long>(oUserService.update(oUserEntity), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Long> create(@RequestBody UserEntity oNewUserEntity) {
        return new ResponseEntity<Long>(oUserService.create(oNewUserEntity), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Long> delete(@PathVariable(value = "id") Long id) {
        return new ResponseEntity<Long>(oUserService.delete(id), HttpStatus.OK);
    }

    @PostMapping("/generate")
    public ResponseEntity<UserEntity> generateOne() {
        return new ResponseEntity<>(oUserService.generateOne(), HttpStatus.OK);
    }

    @PostMapping("/generate/{amount}")
    public ResponseEntity<Long> generateSome(@PathVariable Long amount) {
        return new ResponseEntity<>(oUserService.generateSome(amount), HttpStatus.OK);
    }
}
