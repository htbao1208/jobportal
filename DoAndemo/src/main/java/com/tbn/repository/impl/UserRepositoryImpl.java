/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.repository.impl;


import com.tbn.pojos.User;
import com.tbn.repository.UserRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
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
public class UserRepositoryImpl implements UserRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Override
    public boolean addUser(User user) {
        
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(user);
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }
        
        
       return false;
    }

    @Override
    public List<User> getUsers(String username) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query = query.select(root);
        
        if(!username.isEmpty()){
            Predicate p = builder.equal(root.get("username").as(String.class), username.trim());
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }

//    @Override
//    public User getInfoUser(String username) {
//        User user;
//        Session session = sessionFactory.getObject().getCurrentSession();
//        user = session.get(User.class, this.getIdByUsername(username));
//        return user;
//    }
//    
//    public int getIdByUsername(String username){
//        Session session = sessionFactory.getObject().getCurrentSession();
//        Query query = session.createQuery("SELECT id_tai_khoan FROM User WHERE username=:usernameParam");
//        query.setParameter("usernameParam", username);
//        return (int) query.uniqueResult();
//    }

    @Override
    public List<User> getUsersByUserRole(String kw , int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query = query.select(root);
        
        if(kw != null){
            Predicate p = builder.like(root.get("userRole").as(String.class), String.format("%%%s%%", kw));
            query = query.where(p);
        }
        
        query = query.orderBy(builder.desc(root.get("createdDate")));
        
        javax.persistence.Query q = session.createQuery(query);
        
        int max = 9;
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        
        return q.getResultList();
    }

    @Override
    public long countUser() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        javax.persistence.Query q = session.createQuery("Select Count(*) From User");
        
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public User getUserById(int id) {
        User u;
        
        Session session = this.sessionFactory.getObject().getCurrentSession();
        u = session.get(User.class, id);
        
        return u;
    }
    

    
}
