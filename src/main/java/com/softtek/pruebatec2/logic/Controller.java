package com.softtek.pruebatec2.logic;

import com.softtek.pruebatec2.persistence.PersistenceController;
import java.time.LocalDate;
import java.util.List;

public class Controller {

    PersistenceController citizenControlPers = new PersistenceController();
    PersistenceController turnControlPers = new PersistenceController();

    /* CRUD Citizen */
    public void createCitizen(Citizen citizen) throws Exception {
        citizenControlPers.createCitizen(citizen);
    }

    public void deleteCitizen(String dni) {
        citizenControlPers.deleteCitizen(dni);
    }

    public List<Citizen> getCitizens() {
        return citizenControlPers.getCitizens();
    }

    public Citizen getCitizenByDNI(String dni) {
        return citizenControlPers.getCitizenByDNI(dni);
    }

    public void updateCitizen(Citizen citizen) {
        citizenControlPers.updateCitizen(citizen);
    }

    /* CRUD Turn */
    public void createTurn(Turn turn) throws Exception {
        turnControlPers.createTurn(turn);
    }

    public void deleteTurn(Long id) {
        turnControlPers.deleteTurn(id);
    }

    public List<Turn> getTurns() {
        return turnControlPers.getTurns();
    }

    public Turn getTurnById(Long id) {
        return turnControlPers.getTurnById(id);
    }
    
    public List<Turn> getTurnsByDate(LocalDate date) {
        return turnControlPers.getTurnsByDate(date);
    }

    public void updateTurn(Turn turn) {
        turnControlPers.updateTurn(turn);
    }

}
