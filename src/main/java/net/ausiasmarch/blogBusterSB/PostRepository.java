package net.ausiasmarch.blogBusterSB;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostRepository extends JpaRepository<PostEntity, Long> {

    Page<PostEntity> findByTituloIgnoreCaseContainingOrCuerpoIgnoreCaseContainingOrEtiquetasIgnoreCaseContaining(String sTitulo, String sCuerpo, String sEtiquetas, Pageable oPageable);

}
