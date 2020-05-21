package br.com.estacioPro.agenda.service;

import br.com.estacioPro.agenda.model.UserC;
import br.com.estacioPro.agenda.repository.UserCRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserCService {

    @Autowired
    UserCRepository repository;

    public UserC findUserByName(String nick){
        return repository.findByName(nick);
    }

    public UserC enterLogin(String nick, String pass){
        return repository.verifyLogin(nick, pass);
    }

    public List<UserC> getAllUsers(){
        return repository.findAll();
    }

    public Boolean getUserByName(String nick){
        repository.existsByName(nick);
        return false;
    }

    public Optional<UserC> getUserById(Long id){
            return repository.findById(id);
    }

    public UserC createUser(UserC user){
        return repository.save(user);
    }

    public UserC changeUser(UserC user){
        if(user.getId() != null){
            return repository.save(user);
        }else {
            return null;
        }
    }

    public void deleteUserById(Long id){
        repository.deleteById(id);
    }
}
