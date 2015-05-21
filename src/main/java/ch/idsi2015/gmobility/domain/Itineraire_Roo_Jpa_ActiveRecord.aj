// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ch.idsi2015.gmobility.domain;

import ch.idsi2015.gmobility.domain.Itineraire;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Itineraire_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Itineraire.entityManager;
    
    public static final List<String> Itineraire.fieldNames4OrderClauseFilter = java.util.Arrays.asList("trajet");
    
    public static final EntityManager Itineraire.entityManager() {
        EntityManager em = new Itineraire().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Itineraire.countItineraires() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Itineraire o", Long.class).getSingleResult();
    }
    
    public static List<Itineraire> Itineraire.findAllItineraires() {
        return entityManager().createQuery("SELECT o FROM Itineraire o", Itineraire.class).getResultList();
    }
    
    public static List<Itineraire> Itineraire.findAllItineraires(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Itineraire o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Itineraire.class).getResultList();
    }
    
    public static Itineraire Itineraire.findItineraire(Long id) {
        if (id == null) return null;
        return entityManager().find(Itineraire.class, id);
    }
    
    public static List<Itineraire> Itineraire.findItineraireEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Itineraire o", Itineraire.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Itineraire> Itineraire.findItineraireEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Itineraire o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Itineraire.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Itineraire.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Itineraire.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Itineraire attached = Itineraire.findItineraire(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Itineraire.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Itineraire.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Itineraire Itineraire.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Itineraire merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
