/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.service;

import com.tbn.pojos.Infor;
import java.util.List;

/**
 *
 * @author ADMINIS
 */
public interface InforService  {
    boolean addInfor(Infor infor);
//    Infor addInfor(Infor infor,int UserId);
    List<Infor> getInfors();
    Infor getInforById(int id);
    Infor getInforByUser(int id);
}
