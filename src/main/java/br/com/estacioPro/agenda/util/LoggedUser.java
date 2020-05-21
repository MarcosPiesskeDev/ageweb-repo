package br.com.estacioPro.agenda.util;

import br.com.estacioPro.agenda.model.UserC;

public class LoggedUser {

    private static LoggedUser loggedUser;
    private UserC user;

    public static LoggedUser getInstance(){
        if(loggedUser == null) loggedUser = new LoggedUser();
        return loggedUser;
    }

    public UserC getUser() {
        return user;
    }

    public void saveUser(UserC user) {
        this.user = user;
    }
}
