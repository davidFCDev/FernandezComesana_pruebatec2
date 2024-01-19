package com.softtek.pruebatec2.logic;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "citizen")
public class Citizen implements Serializable {

    @Id
    private String dni;
    private String name;
    private String surname;

    @OneToMany(mappedBy = "citizen")
    private List<Turn> turns;

    public Citizen() {
    }

    public Citizen(String dni, String name, String surname) {
        this.dni = dni;
        this.name = name;
        this.surname = surname;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public List<Turn> getTurns() {
        return turns;
    }

    public void setTurns(List<Turn> turns) {
        this.turns = turns;
    }

    @Override
    public String toString() {
        return "Citizen{" + "dni=" + dni + ", nombre=" + name + ", apellidos=" + surname + ", turns=" + turns + '}';
    }

}
