package br.com.estacioPro.agenda.controller;

import br.com.estacioPro.agenda.model.UserC;

import br.com.estacioPro.agenda.service.UserCService;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@RestController
@RequestMapping(value = "/user")
public class UserCController {

    @Autowired
    UserCService service;

//============ POST METHOD ==============
    @GetMapping(value = "/add", produces = "text/html")
    public ModelAndView addUserView(){
        ModelAndView mav = new ModelAndView("registerU");
        return mav;
    }

    @PostMapping(value="/add", produces = "text/html")
    public ModelAndView addUser(@ModelAttribute("u") UserC u){
        ModelAndView mav = new ModelAndView("registerU");
        try {
            if(u != null) {
                if(!service.getUserByName(u.getNickName())) {
                    service.createUser(u);
                    mav.addObject("warning", "Sucesso ao salvar este usuário :D");
                }
            }
        }catch (Exception e){
        System.out.println("Não foi possível salvar o contato: "+e);
            mav.addObject("warning", "Já existe um contato com este nome");
        }
        finally {
            return mav;
        }
    }

//============ GET METHOD ==============
    @GetMapping(value= "", produces = "text/html")
    public ModelAndView allUsers() {
        ModelAndView mav = new ModelAndView("users");
        mav.addObject("u", service.getAllUsers());
        return mav;
    }

    @GetMapping(value = "/{id}/info")
    public ModelAndView getUserId(@PathVariable("id") Long id) {
        ModelAndView mav = new ModelAndView("userId");
        Optional<UserC> oneUser = service.getUserById(id);
        if(oneUser.isPresent()) {
            mav.addObject("users", oneUser.get());
        }
        return mav;
    }

//============ PUT METHOD NAME ============
    @GetMapping(value = "/changePass", produces = "text/html")
    public ModelAndView alterUserByNameView(){
        ModelAndView mav = new ModelAndView("updateUserN");
        return mav;
    }

    @PostMapping(value="/updatePass", produces = "text/html")
    public ModelAndView alterUserByName(@RequestParam("nickName") String nickName, @RequestParam("password") String password){
        ModelAndView mav = new ModelAndView("updateUserN");
        try {
            UserC u = service.findUserByName(nickName);
            if (nickName.equals(u.getNickName())) {
                u.setPassword(password);
                service.changeUser(u);
                mav.addObject("warning", "Senha alterada com sucesso!");
            }else {
               mav.addObject("warning", "Usuário não encontrado, tente novamente");
            }
        }catch (NullPointerException ne){
            System.out.println("Error to change pass: "+ne);
            mav.addObject("warning", "Usuário não encontrado, tente novamente");
        }catch (Exception e){
            System.out.println("Error to change pass: "+e);
        }
        return mav;
    }

//============ DELETE METHOD ==============
    @GetMapping(value = "/{id}/delete")
    public ModelAndView deleteUser(@PathVariable Long id){
        service.deleteUserById(id);
        return new ModelAndView("redirect:/user");
    }


//============ PUT METHOD {admin mode}==============
    @GetMapping(value = "{id}/update", produces = "text/html")
    public ModelAndView alterUserView(@PathVariable Long id){
        ModelAndView mav = new ModelAndView("updateU");
        Optional<UserC> oneUser = service.getUserById(id);
        if(oneUser.isPresent()) {
            mav.addObject("users", oneUser.get());
        }
        return mav;
    }

    @GetMapping()
    public ModelAndView errorNickUsed(){
        ModelAndView mav = new ModelAndView("updateU");
        return mav.addObject("warning", "Este usuário já está em uso, tente novamente.");
    }

    @PostMapping(value="/update", produces = "text/html")
    public ModelAndView alterUser(@RequestParam("id") Long id, @RequestParam("nickName") String nickName, @RequestParam("password") String password){
        Optional<UserC> u = service.getUserById(id);
        u.get().setId(id);
        u.get().setNickName(nickName);
        u.get().setPassword(password);
        try {
            if (nickName.equals(u.get().getNickName())) {
                service.changeUser(u.get());
            }
        }catch (Exception e){
            System.out.println("Não foi possível alterar este contato: "+e);
            return errorNickUsed();
        }
        return new ModelAndView("redirect:/user");
    }

}
