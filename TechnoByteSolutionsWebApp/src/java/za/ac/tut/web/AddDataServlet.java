/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.ClientsDataFacadeLocal;
import za.ac.tut.model.bl.ManageCategorySBLocal;
import za.ac.tut.model.entity.ClientsData;

/**
 *
 * @author calvin
 */
public class AddDataServlet extends HttpServlet {

    @EJB ClientsDataFacadeLocal fac;
    @EJB ManageCategorySBLocal cat;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Integer reading = Integer.parseInt(request.getParameter("reading"));
        String category = cat.manageCategory(reading);
        
        ClientsData client = createClient(id, reading, category);
        
        fac.create(client);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_outcome.jsp");
        disp.forward(request, response);
    }

    private ClientsData createClient(Long id, Integer reading, String category) {
        ClientsData client = new ClientsData();
        
        client.setId(id);
        client.setCategory(category);
        client.setReading(reading);
        client.setReadingDate(new Date());
        
        return client;
    }

}
