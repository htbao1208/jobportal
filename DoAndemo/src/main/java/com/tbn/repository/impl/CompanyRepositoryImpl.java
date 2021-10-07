///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.tbn.repository.impl;
//
//import com.tbn.pojos.Company;
//import com.tbn.repository.CompanyRepository;
//import org.hibernate.HibernateException;
//import org.hibernate.Session;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
//import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;
//
///**
// *
// * @author kid03
// */
//@Repository
//@Transactional
//public class CompanyRepositoryImpl implements CompanyRepository{
//    @Autowired
//    private LocalSessionFactoryBean sessionFactory;
//    
//    @Override
//    public boolean addComp(Company comp) {
//        Session session = this.sessionFactory.getObject().getCurrentSession();
//        try{
//            session.save(comp);
//            return true;
//        } catch (HibernateException ex) {
//            System.err.println(ex.getMessage());
//        }
//        return false;
//    }
//    
//}
