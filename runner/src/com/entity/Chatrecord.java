package com.bch.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Chatrecord {
    private int id;
    private Timestamp times;
    private String content;
    private String uId;
    private String talkerId;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "times", nullable = false)
    public Timestamp getTimes() {
        return times;
    }

    public void setTimes(Timestamp times) {
        this.times = times;
    }

    @Basic
    @Column(name = "content", nullable = false, length = 1024)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "uId", nullable = false, length = 50)
    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    @Basic
    @Column(name = "talkerId", nullable = false, length = 50)
    public String getTalkerId() {
        return talkerId;
    }

    public void setTalkerId(String talkerId) {
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
