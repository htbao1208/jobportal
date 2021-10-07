/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.repository.impl;

import com.tbn.pojos.Infor;
import com.tbn.pojos.User;
//import com.tbn.pojos.User;
import com.tbn.repository.InforRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
//import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;

//import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
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
public class InforRepositoryImpl implements InforRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Override
    public boolean addInfor(Infor infor) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(infor);
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
            
        }
        
        
       return false;
        
    }

    @Override
    public List<Infor> getInfors() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Infor> query = builder.createQuery(Infor.class);
        Root root = query.from(Infor.class);
        query = query.select(root);
        
//        if( kw != null){
//            Predicate p = builder.like(root.get("ten").as(String.class),
//                    String.format("%%%s%%", kw));
//            query = query.where(p);
//            
//        }
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }
    @Override
    public Infor getInforById(int id){
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Infor.class, id);
    }

    @Override
    public Infor getInfoByIdUser(int i) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
//        CriteriaBuilder builder = session.getCriteriaBuilder();
//        CriteriaQuery<Infor> query = builder.createQuery(Infor.class);
//        Root root = query.from(Infor.class);
//        query = query.select(root);
//        
//        Predicate p = builder.like(root.get("user").as(Integer.class), String.format("%d", i));
//        query = query.where(p);
//        
//        
//        
//        
//        javax.persistence.Query q = session.createQuery(query);

        String q = "FROM Infor i WHERE i.user.id_tai_khoan = :Id";
        javax.persistence.Query query = session.createQuery(q).setParameter("Id", i);
        
        
        return (Infor) query.getSingleResult();
    }


    
    
}
