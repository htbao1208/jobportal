/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.repository;

import com.tbn.pojos.Infor;

import java.util.List;

/**
 *
 * @author ADMINIS
 */
public interface InforRepository {
    boolean addInfor(Infor infor);
    List<Infor> getInfors();
    Infor getInforById(int id);
    Infor getInfoByIdUser(int id);

}
