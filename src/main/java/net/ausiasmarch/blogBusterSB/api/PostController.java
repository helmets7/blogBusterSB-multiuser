package net.ausiasmarch.blogBusterSB.api;

import net.ausiasmarch.blogBusterSB.entity.PostEntity;
import net.ausiasmarch.blogBusterSB.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/post")
public class PostController {

    private final PostService oPostService;

    @Autowired
    public PostController(PostService oPostService) {
        this.oPostService = oPostService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<PostEntity> get(@PathVariable(value = "id") Long id) {
        return new ResponseEntity<>(oPostService.get(id), HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<Page<PostEntity>> getPage(
           @PageableDefault(page = 0, size = 10, direction = Sort.Direction.DESC) Pageable oPageable,
           @RequestParam(name = "filter", required = false) String strFilter,
           @RequestParam(value = "id_user", required = false) Long id_user) {
        return new ResponseEntity<>(oPostService.getPage(oPageable, strFilter, id_user), HttpStatus.OK);
    }

    @GetMapping("/count")
    public ResponseEntity<Long> count() {
        return new ResponseEntity<Long>(oPostService.count(), HttpStatus.OK);
    }

    @PutMapping
    public ResponseEntity<Long> update(@RequestBody PostEntity oPostEntity) {
        return new ResponseEntity<Long>(oPostService.update(oPostEntity), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Long> create(@RequestBody PostEntity oNewPostEntity) {
        return new ResponseEntity<Long>(oPostService.create(oNewPostEntity), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Long> delete(@PathVariable(value = "id") Long id) {
        return new ResponseEntity<Long>(oPostService.delete(id), HttpStatus.OK);
    }

    @PostMapping("/generate")
    public ResponseEntity<PostEntity> generateOne() {
        return new ResponseEntity<>(oPostService.generateOne(), HttpStatus.OK);
    }

    @PostMapping("/generate/{amount}")
    public ResponseEntity<Long> generateSome(@PathVariable Long amount) {
        return new ResponseEntity<>(oPostService.generateSome(amount), HttpStatus.OK);
    }

}
