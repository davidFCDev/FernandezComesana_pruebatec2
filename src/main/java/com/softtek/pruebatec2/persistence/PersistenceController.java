package com.softtek.pruebatec2.persistence;

import com.softtek.pruebatec2.logic.Citizen;
import com.softtek.pruebatec2.logic.Turn;
import com.softtek.pruebatec2.persistence.exceptions.NonexistentEntityException;
import java.time.LocalDate;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.Query;

public class PersistenceController {

    CitizenJpaController citizenJPA = new CitizenJpaController();
    TurnJpaController turnJPA = new TurnJpaController();

    /* CRUD Citizen */
    public void createCitizen(Citizen citizen) throws Exception {
        citizenJPA.create(citizen);
    }

    public void deleteCitizen(String dni) {
        try {
            citizenJPA.destroy(dni);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Citizen> getCitizens() {
        return citizenJPA.findCitizenEntities();
    }

    public Citizen getCitizenByDNI(String dni) {
        return citizenJPA.findCitizen(dni);
    }

    public void updateCitizen(Citizen citizen) {
        try {
            citizenJPA.edit(citizen);
        } catch (Exception ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /* CRUD Turn */
    public void createTurn(Turn turn) throws Exception {
        turnJPA.create(turn);
    }

    public void deleteTurn(Long id) {
        try {
            turnJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Turn> getTurns() {
        return turnJPA.findTurnEntities();
    }

    public List<Turn> getTurnsByDate(LocalDate date) {
        return turnJPA.findTurnsByDate(date);
    }

    public Turn getTurnById(Long id) {
        return turnJPA.findTurn(id);
    }

    public void updateTurn(Turn turn) {
        try {
            turnJPA.edit(turn);
        } catch (Exception ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
