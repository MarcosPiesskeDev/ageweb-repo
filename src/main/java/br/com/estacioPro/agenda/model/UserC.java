package br.com.estacioPro.agenda.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "user")
public class UserC {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JsonManagedReference(value = "user")
    @OneToMany(mappedBy = "user")
    List<Contact> contacts;

    @Column(name = "nick_name", length = 100, nullable = false)
    private String nickName;

    @Column(name = "password", length = 120, nullable = false)
    private String password;

    public UserC(Long id, String nick_name, String password){
        this.id = id;
        this.nickName = nick_name;
        this.password = password;
    }

    public UserC(){
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Contact> getContacts() {
        return contacts;
    }

    public void setContacts(List<Contact> contacts) {
        this.contacts = contacts;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    @Override
    public String toString() {
        return "UserC{" +
                "id=" + id +
                ", contacts=" + contacts +
                ", nickName='" + nickName + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
