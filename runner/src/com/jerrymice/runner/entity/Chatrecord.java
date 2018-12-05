package com.jerrymice.runner.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name="chatrecord")
public class Chatrecord {
    private int id;
    private Timestamp times;
    private String content;
    private Users uId;        //多对一
    private Users talkerId;  //多对一

    
    
    @Id
    @GenericGenerator(name = "id", strategy = "assigned")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Timestamp getTimes() {
        return times;
    }

    public void setTimes(Timestamp times) {
        this.times = times;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "uId")
    public Users getuId() {
        return uId;
    }

    public void setuId(Users uId) {
        this.uId = uId;
    }

    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "talkerId")
    public Users getTalkerId() {
        return talkerId;
    }

    public void setTalkerId(Users talkerId) {
        this.talkerId = talkerId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Chatrecord that = (Chatrecord) o;
        return id == that.id &&
                Objects.equals(times, that.times) &&
                Objects.equals(content, that.content) &&
                Objects.equals(uId, that.uId) &&
                Objects.equals(talkerId, that.talkerId);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, times, content, uId, talkerId);
    }
}
