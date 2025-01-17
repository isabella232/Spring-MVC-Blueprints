// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.packt.hotel.portal.jpa.data;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.packt.hotel.portal.jpa.data.Status;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Status_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Status.entityManager;
    
    public static final List<String> Status.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Status.entityManager() {
        EntityManager em = new Status().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Status.countStatuses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Status o", Long.class).getSingleResult();
    }
    
    public static List<Status> Status.findAllStatuses() {
        return entityManager().createQuery("SELECT o FROM Status o", Status.class).getResultList();
    }
    
    public static List<Status> Status.findAllStatuses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Status o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Status.class).getResultList();
    }
    
    public static Status Status.findStatus(Long id) {
        if (id == null) return null;
        return entityManager().find(Status.class, id);
    }
    
    public static List<Status> Status.findStatusEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Status o", Status.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Status> Status.findStatusEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Status o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Status.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Status.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Status.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Status attached = Status.findStatus(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Status.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Status.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Status Status.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Status merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
