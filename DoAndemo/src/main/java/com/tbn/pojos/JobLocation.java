///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.tbn.pojos;
//
//import java.io.Serializable;
//import java.util.List;
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//import javax.persistence.OneToMany;
//import javax.persistence.Table;
//
///**
// *
// * @author kid03
// */
//@Entity
//@Table(name = "dia_chi_lam_viec")
//public class JobLocation implements Serializable{
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private int id;
//    @Column(name = "dia_chi")
//    private String address;
//    
//    @ManyToOne
//    @JoinColumn(name = "id_quan_huyen")
//    private District district;
//    
//    @OneToMany(mappedBy = "jobLocation")
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
//     * @param id the id to set
//     */
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    /**
//     * @return the address
//     */
//    public String getAddress() {
//        return address;
//    }
//
//    /**
//     * @param address the address to set
//     */
//    public void setAddress(String address) {
//        this.address = address;
//    }
//
//    /**
//     * @return the district
//     */
//    public District getDistrict() {
//        return district;
//    }
//
//    /**
//     * @param district the district to set
//     */
//    public void setDistrict(District district) {
//        this.district = district;
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
