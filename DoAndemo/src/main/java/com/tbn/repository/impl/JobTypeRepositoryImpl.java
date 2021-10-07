/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.repository.impl;

import com.tbn.pojos.JobPost;
import com.tbn.pojos.JobType;
import com.tbn.repository.JobPostRepository;
import com.tbn.repository.JobTypeRepository;
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
public class JobTypeRepositoryImpl implements JobTypeRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
        @Override
        @Transactional
            public List<JobType> getJobTypes() {
                Session session = this.sessionFactory.getObject().getCurrentSession();
                Query q = session.createQuery("From JobType");
                return q.getResultList();
                
    }

    
   
}
