package com.bch.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name="systemnotices")
public class Systemnotices {
    private int id;
    private Timestamp times;
    private int status;
    private String content;
    private String uId;

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
    @Column(name = "status", nullable = false)
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Basic
    @Column(name = "content", nullable = false, length = 50)
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Systemnotices that = (Systemnotices) o;
        return id == that.id &&
                status == that.status &&
                Objects.equals(times, that.times) &&
                Objects.equals(content, that.content) &&
                Objects.equals(uId, that.uId);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, times, status, content, uId);
    }
}
