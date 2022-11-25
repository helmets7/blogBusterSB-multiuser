package net.ausiasmarch.blogBusterSB.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import net.ausiasmarch.blogBusterSB.entity.PostEntity;
import net.ausiasmarch.blogBusterSB.exception.CannotPerformOperationException;
import net.ausiasmarch.blogBusterSB.exception.ResourceNotFoundException;
import net.ausiasmarch.blogBusterSB.exception.ResourceNotModifiedException;
import net.ausiasmarch.blogBusterSB.helper.RandomHelper;
import net.ausiasmarch.blogBusterSB.helper.ValidationHelper;
import net.ausiasmarch.blogBusterSB.repository.PostRepository;

@Service
public class PostService {

    private final PostRepository oPostRepository;
    private final UserService oUserService;

    private final List<String> lorems = List.of("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.",
           "Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.",
           "Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.",
           "Nam tincidunt viverra nulla. Nunc quis laoreet sem",
           "Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.",
           "Donec tristique justo et interdum dignissim.",
           "Vivamus id vestibulum nulla.",
           "Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.",
           "Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.",
           "Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.",
           "Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.",
           "Pellentesque non tortor varius, rhoncus enim a, tempor nulla. Ut ornare diam nisi, vel viverra ligula rutrum non. Integer commodo magna quis odio posuere, dignissim tincidunt sem mollis.",
           "Praesent vel libero eros.");

    @Autowired
    public PostService(PostRepository oPostRepository, UserService oUserService) {
        this.oPostRepository = oPostRepository;
        this.oUserService = oUserService;
    }

    public void validate(Long id) {
        if (!oPostRepository.existsById(id)) {
            throw new ResourceNotFoundException("id " + id + " not exist");
        }
    }

    public void validate(PostEntity oPostEntity) {
        ValidationHelper.validateStringLength(oPostEntity.getTitle(), 2, 100, "post field (2 to 100 chars length)");
        ValidationHelper.validateStringLength(oPostEntity.getBody(), 2, 10000, "body field (2 to 10000 chars length)");
        ValidationHelper.validateDate(oPostEntity.getDatetime(), LocalDateTime.of(1990, 01, 01, 00, 00, 00), LocalDateTime.of(2025, 01, 01, 00, 00, 00), "campo fecha");
        ValidationHelper.validateStringLength(oPostEntity.getLabels(), 2, 250, "label field (length between 2 and 250 chars)");

    }

    public PostEntity get(Long id) {
        //oAuthService.OnlyAdmins();
        return oPostRepository.findById(id)
               .orElseThrow(() -> new ResourceNotFoundException("Post with id: " + id + " not found"));
    }

    public Page<PostEntity> getPage(Pageable oPageable, String strFilter, Long id_user) {
        //oAuthService.OnlyAdmins();
        ValidationHelper.validateRPP(oPageable.getPageSize());
        if (strFilter == null || strFilter.length() == 0) {
            if (id_user == null) {
                return oPostRepository.findAll(oPageable);
            } else {
                return oPostRepository.findByUserId(id_user, oPageable);
            }
        } else {
            if (id_user == null) {
                return oPostRepository.findByTitleIgnoreCaseContainingOrBodyIgnoreCaseContainingOrLabelsIgnoreCaseContaining(strFilter, strFilter, strFilter, oPageable);
            } else {
                return oPostRepository.findByUserIdAndTitleIgnoreCaseContainingOrBodyIgnoreCaseContainingOrLabelsIgnoreCaseContaining(id_user, strFilter, strFilter, strFilter, oPageable);
            }
        }

    }

    public Long count() {
        //oAuthService.OnlyAdmins();
        return oPostRepository.count();
    }

    public Long update(PostEntity oPostEntity) {
        validate(oPostEntity.getId());
        validate(oPostEntity);
        //oAuthService.OnlyAdmins();
        return oPostRepository.save(oPostEntity).getId();
    }

    public Long create(PostEntity oNewPostEntity) {
        //oAuthService.OnlyAdmins();
        validate(oNewPostEntity);
        oNewPostEntity.setId(0L);
        oNewPostEntity.setDatetime(LocalDateTime.now());
        oUserService.validate(oNewPostEntity.getUser().getId());
        return oPostRepository.save(oNewPostEntity).getId();
    }

    public Long delete(Long id) {
        //oAuthService.OnlyAdmins();
        validate(id);
        oPostRepository.deleteById(id);
        if (oPostRepository.existsById(id)) {
            throw new ResourceNotModifiedException("can't remove register " + id);
        } else {
            return id;
        }
    }

    public PostEntity getOneRandom() {
        if (count() > 0) {
            PostEntity oPostEntity = null;
            List<PostEntity> lPosts = oPostRepository.findAll();
            int iPosicion = RandomHelper.getRandomInt(0, (int) lPosts.size() - 1);
            return lPosts.get(iPosicion);
        } else {
            throw new CannotPerformOperationException("ho hay usuarios en la base de datos");
        }
    }

    private PostEntity generatePost() {
        PostEntity oPostEntity = new PostEntity();
        oPostEntity.setTitle(lorems.get(RandomHelper.getRandomInt(0, lorems.size() - 1)));
        int tope = RandomHelper.getRandomInt(10, 30);
        String discurso = "";
        for (int i = 1; i <= tope; i++) {
            discurso += lorems.get(RandomHelper.getRandomInt(0, lorems.size() - 1));
        }
        oPostEntity.setBody(discurso);
        oPostEntity.setDatetime(RandomHelper.getRadomDateTime());
        ArrayList<String> al = new ArrayList<>(Arrays.asList(discurso.split(" ")));
        Collections.shuffle(al);
        oPostEntity.setLabels(String.join(" ", new ArrayList<String>(al.subList(1, RandomHelper.getRandomInt(3, 10)))));
        oPostEntity.setVisible(Boolean.TRUE);
        oPostEntity.setUser(oUserService.getOneRandom());
        return oPostEntity;
    }

    public PostEntity generateOne() {
        //oAuthService.OnlyAdmins();
        return oPostRepository.save(generatePost());
    }

    public Long generateSome(Long amount) {
        //oAuthService.OnlyAdmins();
        List<PostEntity> postToSave = new ArrayList<>();
        for (int i = 0; i < amount; i++) {
            postToSave.add(generatePost());
        }
        oPostRepository.saveAll(postToSave);
        return oPostRepository.count();
    }
}
