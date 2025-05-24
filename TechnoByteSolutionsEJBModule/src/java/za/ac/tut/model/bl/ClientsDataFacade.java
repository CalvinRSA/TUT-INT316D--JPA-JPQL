/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.model.entity.ClientsData;

/**
 *
 * @author calvin
 */
@Stateless
public class ClientsDataFacade extends AbstractFacade<ClientsData> implements ClientsDataFacadeLocal {

    @PersistenceContext(unitName = "TechnoByteSolutionsEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ClientsDataFacade() {
        super(ClientsData.class);
    }

    @Override
    public List<ClientsData> getClientsByCategory(String category) {
        String queryStr = "SELECT s FROM ClientsData s WHERE s.category =?1";
        Query query = em.createQuery(queryStr);
        query.setParameter(1, category);
        List<ClientsData> clients = query.getResultList();
        return clients;
    }

    @Override
    public ClientsData getHighestReadClient() {
        String queryStr = "SELECT MAX(s.reading) FROM ClientsData s";
        Query query = em.createQuery(queryStr);
        Integer highestReading = (Integer)query.getSingleResult();
        String promp = "SELECT s FROM ClientsData s WHERE s.reading =?1";
        Query q2 = em.createQuery(promp);
        q2.setParameter(1, highestReading);
        
        ClientsData client = (ClientsData)q2.getSingleResult();
                
        return client;
    }

    @Override
    public Double getAveragePerClient(Long id) {
        String queryStr = "SELECT AVG(s.reading) FROM ClientsData s WHERE s.id <>?1";
        Query query = em.createQuery(queryStr);
        query.setParameter(1, id);
        Double firstAvg = (Double)query.getSingleResult();
        
        String promp = "SELECT AVG(s.reading) FROM ClientsData s";
        Query q2 = em.createQuery(promp);
        Double secAvg = (Double)q2.getSingleResult();
        
        Double clientAvg = secAvg - firstAvg;
        return clientAvg;
    }

    @Override
    public List<ClientsData> getClientsByRange(Integer min, Integer max) {
        String queryStr = "SELECT s FROM ClientsData s WHERE s.reading >=?1 AND s.reading <=?2";
        Query query = em.createQuery(queryStr);
        query.setParameter(1, min);
        query.setParameter(2, max);
        List<ClientsData> clients = query.getResultList();
        return clients;
    }
    
    
    
    
}
