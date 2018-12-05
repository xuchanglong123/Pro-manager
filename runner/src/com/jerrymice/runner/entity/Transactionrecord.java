package com.hibernate.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
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
@Table(name="transactionrecord")
public class Transactionrecord {
    private int id;
    private int money;
    private int status;
    private Users uId;
    private Timestamp times;

    @Id
    @GenericGenerator(name = "id", strategy = "assigned")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @ManyToOne
    @JoinColumn(name = "uId")
    public Users getuId() {
        return uId;
    }

    public void setuId(Users uId) {
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
