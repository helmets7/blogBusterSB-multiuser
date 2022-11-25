package net.ausiasmarch.blogBusterSB.repository;

import net.ausiasmarch.blogBusterSB.entity.PostEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostRepository extends JpaRepository<PostEntity, Long> {

    Page<PostEntity> findByTitleIgnoreCaseContainingOrBodyIgnoreCaseContainingOrLabelsIgnoreCaseContaining(String sTitulo, String sCuerpo, String sEtiquetas, Pageable oPageable);

    Page<PostEntity> findByUserId(Long id_user, Pageable oPageable);

    Page<PostEntity> findByUserIdAndTitleIgnoreCaseContainingOrBodyIgnoreCaseContainingOrLabelsIgnoreCaseContaining(Long id_user, String strTitle, String strBody, String strLabels, Pageable oPageable);
}
