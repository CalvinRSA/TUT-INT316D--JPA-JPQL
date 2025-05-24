/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.ClientsDataFacadeLocal;
import za.ac.tut.model.entity.ClientsData;

/**
 *
 * @author calvin
 */
public class AverageOfClientServlet extends HttpServlet {

    
    @EJB ClientsDataFacadeLocal fac;

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        
        ClientsData client = fac.find(id);
        
        if(client == null)
        {
            RequestDispatcher disp = request.getRequestDispatcher("search_error_outcome.jsp");
            disp.forward(request, response);
        }
        else
        {
                Double avg = fac.getAveragePerClient(id);
                request.setAttribute("avg", avg);
                RequestDispatcher disp = request.getRequestDispatcher("avg_reading_outcome.jsp");
                disp.forward(request, response);
        }
    }
}
