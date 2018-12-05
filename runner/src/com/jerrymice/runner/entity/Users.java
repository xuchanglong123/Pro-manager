package com.bch.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
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

    @Id
    @Column(name = "id", nullable = false, length = 50)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "nickname", nullable = false, length = 50)
    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    @Basic
    @Column(name = "headPortrait", nullable = false, length = 256)
    public String getHeadPortrait() {
        return headPortrait;
    }

    public void setHeadPortrait(String headPortrait) {
        this.headPortrait = headPortrait;
    }

    @Basic
    @Column(name = "email", nullable = false, length = 50)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "password", nullable = false, length = 50)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "QQ", nullable = true, length = 50)
    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    @Basic
    @Column(name = "weChat", nullable = true, length = 50)
    public String getWeChat() {
        return weChat;
    }

    public void setWeChat(String weChat) {
        this.weChat = weChat;
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
