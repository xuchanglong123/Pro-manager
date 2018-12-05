package com.hibernate.entity;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name="station")
public class Station {
    private int id;
    private String name;
    private String coordinate;
    private Station sId;      //多对一
    private Set<Station> schools =new HashSet<Station>();  //一对多

    @Id
    @GenericGenerator(name = "id", strategy = "assigned")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCoordinate() {
        return coordinate;
    }

    public void setCoordinate(String coordinate) {
        this.coordinate = coordinate;
    }

    @ManyToOne
    @JoinColumn(name = "sId")
    @NotFound(action=NotFoundAction.IGNORE)
    public Station getsId() {
        return sId;
    }

    public void setsId(Station sId) {
        this.sId = sId;
    }

    @OneToMany
    @JoinColumn(name = "schools",nullable = true)
    public Set<Station> getSchools() {
		return schools;
	}

	public void setSchools(Set<Station> schools) {
		this.schools = schools;
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
