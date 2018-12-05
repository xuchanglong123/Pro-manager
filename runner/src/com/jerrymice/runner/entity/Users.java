package com.jerrymice.runner.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import java.util.Objects;

@Entity
@Table(name="users")
public class Users {
    private String id;
    private String nickname;
    private String headPortrait;
    private String email;
    private String password;
    private String qq;
    private String weChat;
    private Information information;


	@Id
	@GeneratedValue(generator = "id")
	@GenericGenerator(name = "id", strategy = "assigned")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getHeadPortrait() {
        return headPortrait;
    }

    public void setHeadPortrait(String headPortrait) {
        this.headPortrait = headPortrait;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getWeChat() {
        return weChat;
    }

    public void setWeChat(String weChat) {
        this.weChat = weChat;
    }

    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="uid")
    public Information getInformation() {
		return information;
	}

	public void setInformation(Information information) {
		this.information = information;
	}
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Users users = (Users) o;
        return Objects.equals(id, users.id) &&
                Objects.equals(nickname, users.nickname) &&
                Objects.equals(headPortrait, users.headPortrait) &&
                Objects.equals(email, users.email) &&
                Objects.equals(password, users.password) &&
                Objects.equals(qq, users.qq) &&
                Objects.equals(weChat, users.weChat);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, nickname, headPortrait, email, password, qq, weChat);
    }
}
