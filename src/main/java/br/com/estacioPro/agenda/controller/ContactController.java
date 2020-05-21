package br.com.estacioPro.agenda.controller;
import br.com.estacioPro.agenda.model.Contact;
import br.com.estacioPro.agenda.model.UserC;
import br.com.estacioPro.agenda.service.ContactService;
import br.com.estacioPro.agenda.service.UserCService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@RestController
@RequestMapping("/contact")
public class ContactController {

    @Autowired
    UserCService userCService;

    @Autowired
    ContactService contactService;

    @GetMapping(value = "/{id}/info", produces = "text/html")
    ModelAndView contactId(@PathVariable("id") Long id){
        ModelAndView mav = new ModelAndView("contactId");
        Optional<Contact> oneContact = contactService.findContactById(id);
        if(oneContact.isPresent()){
            return mav.addObject("contact", oneContact.get());
        }
        return mav;
    }

//======= Cadastrar um contato pegando o id do usuário: ==========

    @GetMapping(value = "/{id}", produces = "text/html")
    public ModelAndView addContactByUserView(@PathVariable Long id){
        ModelAndView mav = new ModelAndView("registerCByU");
        Optional<UserC> oneUser = userCService.getUserById(id);
        if(oneUser.isPresent()) {
            mav.addObject("users", oneUser.get());
        }
        return mav;
    }

    @PostMapping(value="", produces = "text/html")
    public ModelAndView addContactByUserView(@ModelAttribute Contact c){
        ModelAndView mav = new ModelAndView("registerCByU");
        if(c != null){
            contactService.createContact(c);
            mav.addObject("warning", "Contato registrado!");
        }else {
            mav.addObject("warning", "Contato não registrado, tente novamente");
        }
        return new ModelAndView("redirect:/"+c.getUser().getId()+"/welcome");
    }

// ============== PUT METHOD ===============

    @GetMapping(value = "{id}/update", produces = "text/html")
    ModelAndView alterContactView(@PathVariable("id") Long id){
        ModelAndView mav = new ModelAndView("updateCByU");
        Optional<Contact> oneContact = contactService.findContactById(id);
        if(oneContact.isPresent()){
            return mav.addObject("contact", oneContact.get());
        }
        return mav;
    }

    @PostMapping(value = "/update", produces = "text/html")
    ModelAndView alterContact(@RequestParam("id") Long id, @RequestParam ("name") String name, @RequestParam("lastName") String lastName, @RequestParam("email") String email, @RequestParam("telephone") String telephone){
        Optional<Contact> c = contactService.findContactById(id);
        c.get().setName(name);
        c.get().setLastName(lastName);
        c.get().setEmail(email);
        c.get().setTelephone(telephone);
        contactService.changeContactById(c.get());
        return new ModelAndView("redirect:/"+c.get().getUser().getId()+"/welcome");
    }

//============ DELETE METHOD ==============
    @GetMapping(value = "{id}/delete")
    ModelAndView deleteContact(@PathVariable("id") Long id){
        Optional<Contact> c = contactService.findContactById(id);
        contactService.deleteContactById(id);
        return new ModelAndView("redirect:/"+c.get().getUser().getId()+"/welcome");
    }

}
