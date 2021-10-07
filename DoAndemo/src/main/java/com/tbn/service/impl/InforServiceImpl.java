/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.service.impl;

import com.tbn.pojos.Infor;
import com.tbn.pojos.User;
import com.tbn.repository.InforRepository;
import com.tbn.repository.UserRepository;
import com.tbn.service.InforService;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ADMINIS
 */
@Service
public class InforServiceImpl implements InforService{
    @Autowired
    private InforRepository inforRepository;
    @Autowired
    private UserRepository userRepository;
    
    
    @Override
    public List<Infor> getInfors() {
       return this.inforRepository.getInfors();
    }
    @Override
    public Infor getInforById(int i){
        return this.inforRepository.getInforById(i);
    }



    @Override
    public boolean addInfor(Infor infor) {
        return this.inforRepository.addInfor(infor); 
    }

    @Override
    public Infor getInforByUser(int i) {
        return this.inforRepository.getInfoByIdUser(i);
    }
}
