/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.repository.impl;

import com.tbn.pojos.Career;
import com.tbn.repository.CareerRepository;
import java.util.List;
import javax.persistence.Query;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

/**
 *
 * @author kid03
 */
@Repository
@Transactional
public class CareerRepositoryImpl implements CareerRepository{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Career> getCareers() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Career");
        return q.getResultList();
    }
    
}
