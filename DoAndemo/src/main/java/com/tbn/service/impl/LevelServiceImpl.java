/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.service.impl;

import com.tbn.pojos.Infor;
import com.tbn.pojos.Level;
import com.tbn.pojos.LevelDetail;
import com.tbn.repository.LevelRepository;
import com.tbn.service.LevelService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ADMINIS
 */
@Service
public class LevelServiceImpl implements LevelService{
    @Autowired
    private LevelRepository levelRepository;
    @Override
    public boolean addLevel(LevelDetail levelDetail) {
        return this.levelRepository.addLevel(levelDetail);
    }

    @Override
    public List<Level> getLevels() {
         return this.levelRepository.getLevels();
    }

    @Override
    public Level getLevelById(int i) {
       return this.levelRepository.getLevelById(i);
    }
    
}
