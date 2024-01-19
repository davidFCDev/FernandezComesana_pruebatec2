package com.softtek.pruebatec2.logic;

import java.io.Serializable;
import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "turn")
public class Turn implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDate turnDate;
    private String description;
    private boolean turnState;

    @ManyToOne
    @JoinColumn(name = "citizen_dni")
    private Citizen citizen;

    public Turn() {
    }

    public Turn(LocalDate turnDate, String description, Citizen citizen) {
        this.turnDate = turnDate;
        this.description = description;
        this.turnState = false;
        this.citizen = citizen;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getTurnDate() {
        return turnDate;
    }

    public void setTurnDate(LocalDate turnDate) {
        this.turnDate = turnDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isTurnState() {
        return turnState;
    }

    public void setTurnState(boolean turnState) {
        this.turnState = turnState;
    }

    public Citizen getCitizen() {
        return citizen;
    }

    public void setCitizen(Citizen citizen) {
        this.citizen = citizen;
    }

    @Override
    public String toString() {
        return "Turn{" + "id=" + id + ", fecha=" + turnDate + ", descripción=" + description + ", estado=" + turnState + ", ciudadano=" + citizen + '}';
    }

}
