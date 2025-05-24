/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entity.ClientsData;

/**
 *
 * @author calvin
 */
@Local
public interface ClientsDataFacadeLocal {

    void create(ClientsData clientsData);

    void edit(ClientsData clientsData);

    void remove(ClientsData clientsData);

    ClientsData find(Object id);

    List<ClientsData> findAll();

    List<ClientsData> findRange(int[] range);

    int count();

    List<ClientsData> getClientsByCategory(String category);

    ClientsData getHighestReadClient();

    Double getAveragePerClient(Long id);

    List<ClientsData> getClientsByRange(Integer min, Integer max);
    
}
