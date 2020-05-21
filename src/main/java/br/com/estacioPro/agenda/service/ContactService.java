package br.com.estacioPro.agenda.service;

import br.com.estacioPro.agenda.model.Contact;
import br.com.estacioPro.agenda.repository.ContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ContactService {

    @Autowired
    ContactRepository repository;

    public Contact createContact(Contact contact){
        return repository.save(contact);
    }

    public List<Contact> findAllContacts(){
        return repository.findAll();
    }

    public Optional<Contact> findContactById(Long id){
        return repository.findById(id);
    }

    public Contact changeContactById(Contact contact){
        if(contact.getId() != null){
            return repository.save(contact);
        }
        else{
            return null;
        }
    }

    public void deleteContactById(Long id){
        repository.deleteById(id);
    }
}
