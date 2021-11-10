package net.ausiasmarch.blogBusterSB;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/post")
public class PostController {

    @Autowired
    PostRepository oPostRepository;
    
    @GetMapping("/{id}")
    public ResponseEntity<PostEntity> get (@PathVariable(value="id") Long id){        
        return new ResponseEntity<PostEntity>(oPostRepository.getById(id),HttpStatus.OK);                        
    }
    

}
