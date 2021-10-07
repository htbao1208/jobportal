/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.formatter;

import com.tbn.pojos.Infor;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author kid03
 */
public class InforFormatter implements Formatter<Infor>{

    @Override
    public String print(Infor object, Locale locale) {
        return String.valueOf(object.getId());
    }

    @Override
    public Infor parse(String iId, Locale locale) throws ParseException {
        Infor i = new Infor();
        i.setId(Integer.parseInt(iId));
        
        return i;
    }
    
}
