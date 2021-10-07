///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.tbn.pojos;
//
//import java.io.Serializable;
//import javax.persistence.Entity;
//import javax.persistence.Table;
//import java.util.Date;
//import java.util.List;
//import javax.persistence.Column;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.OneToMany;
//import javax.persistence.Temporal;
//
///**
// *
// * @author kid03
// */
//@Entity
//@Table(name = "cong_ty")
//public class Company implements Serializable{
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY) 
//    private int id;
//    @Column(name = "ten_cong_ty")
//    private String compName;
//    @Column(name = "ngay_thanh_lap")
//    @Temporal(javax.persistence.TemporalType.DATE)
//    private Date createdDate;
//    @Column(name = "website_cong_ty")
//    private String compWeb;
//    @Column(name = "logo_cong_ty")
//    private String logo;
//    
//    @OneToMany(mappedBy = "company")
//    private List<JobPost> jobPosts;
//
//    /**
//     * @return the id
//     */
//    public int getId() {
//        return id;
//    }
//
//    /**
//     * @return the compName
//     */
//    public String getCompName() {
//        return compName;
//    }
//
//    /**
//     * @param compName the compName to set
//     */
//    public void setCompName(String compName) {
//        this.compName = compName;
//    }
//
//    /**
//     * @return the createdDate
//     */
//    public Date getCreatedDate() {
//        return createdDate;
//    }
//
//    /**
//     * @param createdDate the createdDate to set
//     */
//    public void setCreatedDate(Date createdDate) {
//        this.createdDate = createdDate;
//    }
//
//    /**
//     * @return the compWeb
//     */
//    public String getCompWeb() {
//        return compWeb;
//    }
//
//    /**
//     * @param compWeb the compWeb to set
//     */
//    public void setCompWeb(String compWeb) {
//        this.compWeb = compWeb;
//    }
//
//    /**
//     * @return the logo
//     */
//    public String getLogo() {
//        return logo;
//    }
//
//    /**
//     * @param logo the logo to set
//     */
//    public void setLogo(String logo) {
//        this.logo = logo;
//    }
//
//    /**
//     * @return the jobPosts
//     */
//    public List<JobPost> getJobPosts() {
//        return jobPosts;
//    }
//
//    /**
//     * @param jobPosts the jobPosts to set
//     */
//    public void setJobPosts(List<JobPost> jobPosts) {
//        this.jobPosts = jobPosts;
//    }
//}
