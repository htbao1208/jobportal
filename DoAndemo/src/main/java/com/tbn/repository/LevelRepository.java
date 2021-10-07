/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.repository;

import com.tbn.pojos.Infor;
import com.tbn.pojos.Level;
import com.tbn.pojos.LevelDetail;
import java.util.List;

/**
 *
 * @author ADMINIS
 */
public interface LevelRepository {
    boolean addLevel(LevelDetail levelDetail);
    List<Level> getLevels();
    Level getLevelById(int id);
}
