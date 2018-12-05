package com.bch.entity;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

//@Cache(region = "sample",usage = CacheConcurrencyStrategy.READ_WRITE)
@Entity
public class Classes {
    //@Cache(region = "all",usage = CacheConcurrencyStrategy.READ_WRITE)
    private int cid;
    private String cname;
    private Set<Student> set = new HashSet<Student>();

    public Set<Student> getSet() {
        return set;
    }

    public void setSet(Set<Student> set) {
        this.set = set;
    }

    @Id
    @Column(name = "cid")
    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    @Basic
    @Column(name = "cname")
    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Classes classes = (Classes) o;
        return cid == classes.cid &&
                Objects.equals(cname, classes.cname);
    }

    @Override
    public int hashCode() {

        return Objects.hash(cid, cname);
    }

    @Override
    public String toString() {
        return "Classes{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", set=" + set +
                '}';
    }
}
