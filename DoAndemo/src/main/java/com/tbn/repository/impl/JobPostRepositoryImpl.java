/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.repository.impl;

import com.tbn.pojos.JobPost;
import com.tbn.repository.JobPostRepository;
import java.util.Date;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

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
public class JobPostRepositoryImpl implements JobPostRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;



    @Override
    public boolean addJobPostOrUpdate(JobPost jp) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Date date=java.util.Calendar.getInstance().getTime();
        try{
            jp.setCreatedDate(date);
            session.save(jp);
            return true;
        } catch (Exception ex) {
            System.err.println("Error" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
        
    }

    @Override
    public List<JobPost> getJobPosts(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<JobPost> query = builder.createQuery(JobPost.class);
        Root root = query.from(JobPost.class);
        query = query.select(root);
        
        if(kw != null){
            Predicate p = builder.like(root.get("namePost").as(String.class), String.format("%%%s%%", kw));
            query = query.where(p);
        }
        
        query = query.orderBy(builder.desc(root.get("createdDate")));
        
        Query q = session.createQuery(query);
        
        int max = 9;
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        
        return q.getResultList();
    }

    @Override
    public JobPost getJobPostById(int jId) {
        JobPost jP;
        
        Session session = this.sessionFactory.getObject().getCurrentSession();
        jP = session.get(JobPost.class, jId);
        
        return jP;
    }

    @Override
    public long countPost() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) From JobPost");
        
        return Long.parseLong(q.getSingleResult().toString());
    }
    
}
