/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.repository.impl;

import com.tbn.pojos.Infor;
import com.tbn.pojos.Level;
import com.tbn.pojos.LevelDetail;
import com.tbn.repository.LevelRepository;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ADMINIS
 */
@Repository
@Transactional
public class LevelRepositoryImpl implements LevelRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Override
    public boolean addLevel(LevelDetail levelDetail) {
         Session session = this.sessionFactory.getObject().getCurrentSession();
         try {
             
            session.save(levelDetail);
            return true;
        } catch (HibernateException ex) {
             System.err.println(ex.getMessage());
        }
         return false;
    }

    @Override
    public List<Level> getLevels() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        javax.persistence.Query q = session.createQuery("From Level");
        return q.getResultList();
        
    }

    @Override
    public Level getLevelById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Level.class, id);
    }
    
}
