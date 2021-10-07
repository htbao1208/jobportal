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
//@Table(name = "quan_huyen")
//public class District implements Serializable{
//    @Id
//    private int id;
//    @Column(name = "ten_quan_huyen")
//    private String distName;
//    @Column(name = "loai")
//    private String distType;
//    
//    @ManyToOne
//    @JoinColumn(name = "id_tinh")
//    private Province province;
//    
//    @OneToMany(mappedBy = "district")
//    private List<JobLocation> jobLocations;
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
//     * @return the distName
//     */
//    public String getDistName() {
//        return distName;
//    }
//
//    /**
//     * @param distName the distName to set
//     */
//    public void setDistName(String distName) {
//        this.distName = distName;
//    }
//
//    /**
//     * @return the distType
//     */
//    public String getDistType() {
//        return distType;
//    }
//
//    /**
//     * @param distType the distType to set
//     */
//    public void setDistType(String distType) {
//        this.distType = distType;
//    }
//
//    /**
//     * @return the province
//     */
//    public Province getProvince() {
//        return province;
//    }
//
//    /**
//     * @param province the province to set
//     */
//    public void setProvince(Province province) {
//        this.province = province;
//    }
//
//    /**
//     * @return the jobLocations
//     */
//    public List<JobLocation> getJobLocations() {
//        return jobLocations;
//    }
//
//    /**
//     * @param jobLocations the jobLocations to set
//     */
//    public void setJobLocations(List<JobLocation> jobLocations) {
//        this.jobLocations = jobLocations;
//    }
//    
//}
