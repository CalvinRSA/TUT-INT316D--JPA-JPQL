/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model.bl;

import javax.ejb.Stateless;

/**
 *
 * @author calvin
 */
@Stateless
public class ManageCategorySB implements ManageCategorySBLocal {

    @Override
    public String manageCategory(Integer reading) {
        String category;
        if(reading>=0 && reading<=5)
        {
            category = "GOOD";
        }
        else if(reading>=6 && reading<=10)
        {
            category = "ACCEPTABLE";
        }
        else
        {
            category = "CONCERNING";
        }
        return category;
    }

    
}
