package com.bch.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
@Table(name="station")
public class Station {
    private int id;
    private String name;
    private String coordinate;
    private int sId;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 50)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "coordinate", nullable = false, length = 50)
    public String getCoordinate() {
        return coordinate;
    }

    public void setCoordinate(String coordinate) {
        this.coordinate = coordinate;
    }

    @Basic
    @Column(name = "sId", nullable = false)
    public int getsId() {
        return sId;
    }

    public void setsId(int sId) {
        this.sId = sId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Station station = (Station) o;
        return id == station.id &&
                sId == station.sId &&
                Objects.equals(name, station.name) &&
                Objects.equals(coordinate, station.coordinate);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, name, coordinate, sId);
    }
}
