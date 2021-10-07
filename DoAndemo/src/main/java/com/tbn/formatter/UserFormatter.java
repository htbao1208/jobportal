/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.formatter;

import com.tbn.pojos.User;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author kid03
 */
public class UserFormatter implements Formatter<User>{

    @Override
    public String print(User t, Locale locale) {
        return String.valueOf(t.getId_tai_khoan());
    }

    @Override
    public User parse(String uId, Locale locale) throws ParseException {
        User u = new User();
        u.setId_tai_khoan(Integer.parseInt(uId));
        return u;
    }
    
}
