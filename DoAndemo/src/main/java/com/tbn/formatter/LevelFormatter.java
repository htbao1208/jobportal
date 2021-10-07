/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.formatter;

import com.tbn.pojos.Level;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author kid03
 */
public class LevelFormatter implements Formatter<Level>{

    @Override
    public String print(Level object, Locale locale) {
        return String.valueOf(object.getId());
    }

    @Override
    public Level parse(String lvlId, Locale locale) throws ParseException {
        Level l = new Level();
        l.setId(Integer.parseInt(lvlId));
        
        return l;
    }
    
}
