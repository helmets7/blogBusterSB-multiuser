package net.ausiasmarch.blogBusterSB;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/post")
public class PostController {

    @Autowired
    PostRepository oPostRepository;

    @GetMapping("/{id}")
    public ResponseEntity<PostEntity> get(@PathVariable(value = "id") Long id) {
        if (oPostRepository.existsById(id)) {
            return new ResponseEntity<PostEntity>(oPostRepository.getById(id), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/count")
    public ResponseEntity<Long> count() {
        return new ResponseEntity<Long>(oPostRepository.count(), HttpStatus.OK);
    }

    @GetMapping("")
    public ResponseEntity<Page<PostEntity>> getPage(@PageableDefault(page = 0, size = 10, direction = Direction.ASC) Pageable oPageable) {
        Page<PostEntity> oPage = null;
        oPage = oPostRepository.findAll(oPageable);
        return new ResponseEntity<Page<PostEntity>>(oPage, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(@PathVariable(value = "id") Long id) {
        if (oPostRepository.existsById(id)) {
            oPostRepository.deleteById(id);
            if (oPostRepository.existsById(id)) {
                return new ResponseEntity<Long>(0L, HttpStatus.NOT_MODIFIED);
            } else {
                return new ResponseEntity<Long>(id, HttpStatus.OK);
            }
        } else {
            return new ResponseEntity<Long>(0L, HttpStatus.NOT_MODIFIED);
        }
    }

    @PostMapping("/")
    public ResponseEntity<?> create(@RequestBody PostEntity oPostEntity) {
        oPostEntity.setId(null);
        return new ResponseEntity<PostEntity>(oPostRepository.save(oPostEntity), HttpStatus.OK);
    }

    @PutMapping("/")
    public ResponseEntity<?> update(@RequestBody PostEntity oPostEntity) {
        if (oPostRepository.existsById(oPostEntity.getId())) {
            return new ResponseEntity<PostEntity>(oPostRepository.save(oPostEntity), HttpStatus.OK);
        } else {
            return new ResponseEntity<Long>(0L, HttpStatus.NOT_MODIFIED);
        }
    }

}
