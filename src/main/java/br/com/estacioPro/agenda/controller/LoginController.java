package br.com.estacioPro.agenda.controller;

import br.com.estacioPro.agenda.model.Contact;
import br.com.estacioPro.agenda.model.UserC;
import br.com.estacioPro.agenda.service.ContactService;
import br.com.estacioPro.agenda.service.UserCService;
import br.com.estacioPro.agenda.util.LoggedUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@RestController
@RequestMapping("")
public class LoginController {

    @Autowired
    UserCService userService;

    @GetMapping(value = "/{id}/welcome")
    public ModelAndView getUserId(@PathVariable("id") Long id) {
        ModelAndView mav = new ModelAndView("userWelcome");
        Optional<UserC> oneUser = userService.getUserById(id);
        if (oneUser.isPresent()) {
            mav.addObject("users", oneUser.get());
        }
        return mav;
    }

    @PostMapping(value = "/login", produces = "text/html")
    public ModelAndView requestLogin(@RequestParam("nickName") String nickName, @RequestParam("password") String password) {
        try {
            UserC u = userService.enterLogin(nickName, password);
            if (u != null) {
                LoggedUser.getInstance().saveUser(u);
                return new ModelAndView("redirect:/" + u.getId() + "/welcome");
            } else {
                ModelAndView mav = new ModelAndView("index");
                return mav.addObject("warning", "Senha ou usuário incorretos, tente novamente.");
            }
        } catch (Exception e) {
            System.out.println("Error to make login: "+e);
        }
        return new ModelAndView("redirect:/");
    }




}
