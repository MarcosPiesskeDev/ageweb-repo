package br.com.estacioPro.agenda.repository;

import br.com.estacioPro.agenda.model.UserC;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.management.openmbean.OpenDataException;
import java.util.Optional;

@Repository
public interface UserCRepository extends JpaRepository<UserC, Long> {
    @Query(value = "SELECT * FROM user WHERE nick_name = :nickName", nativeQuery = true)
    Boolean existsByName(@Param("nickName") String nickName);

    @Query(value = "SELECT * FROM user WHERE nick_name = :nick and password = :pass", nativeQuery = true)
    UserC verifyLogin(@Param("nick") String nick, @Param("pass") String pass);

    @Query(value = "SELECT * FROM user WHERE nick_name = :nickName", nativeQuery = true)
    UserC findByName(@Param("nickName") String nickName);
}


