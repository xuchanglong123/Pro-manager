package com.bch.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name="transactionrecord")
public class Transactionrecord {
    private int id;
    private int money;
    private int status;
    private String uId;
    private Timestamp times;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "money", nullable = false, precision = 0)
    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
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
    @Column(name = "uId", nullable = false, length = 50)
    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    @Basic
    @Column(name = "times", nullable = false)
    public Timestamp getTimes() {
        return times;
    }

    public void setTimes(Timestamp times) {
        this.times = times;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Transactionrecord that = (Transactionrecord) o;
        return id == that.id &&
                money == that.money &&
                status == that.status &&
                Objects.equals(uId, that.uId) &&
                Objects.equals(times, that.times);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, money, status, uId, times);
    }
}
