package no.gruppe6.yatzy.dao;

import no.gruppe6.yatzy.entities.Bruker;
import no.gruppe6.yatzy.entities.Kast;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

@Stateless
public class BrukerDAO {

    @PersistenceContext(name = "yatzyPU")
    private EntityManager em;

    public Bruker finnBrukerMedBrukernavn(String brukernavn){
       return em.find(Bruker.class, brukernavn);
    }

    public List<Kast> finnAlleKast (Bruker bruker){
        String brukernavn = bruker.getBrukernavn();
        return em.createQuery("SELECT s FROM Spill s WHERE s.navn = 'brukernavn'", Kast.class).getResultList(); }

    public void lagreBruker(Bruker b){
        em.persist(b);
    }

    public void lagreKast(Kast k){
        em.persist(k);
    }

    public List<Bruker> finnBrukerMedEpost(String epost){
        TypedQuery<Bruker> query = em.createQuery(
                "SELECT b FROM Bruker b WHERE b.epost= '" + epost + "'", Bruker.class);
        return query.getResultList();
    }


}