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
//import javax.persistence.OneToMany;
//import javax.persistence.Table;
//
///**
// *
// * @author kid03
// */
//@Entity
//@Table(name = "tinh")
//public class Province implements Serializable{
//    @Id
//    private int id;
//    @Column(name = "ten_tinh")
//    private String provinceName;
//    @Column(name = "loai")
//    private String provinceType;
//    
//    @OneToMany(mappedBy = "province")
//    private List<District> districts;
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
//     * @return the provinceName
//     */
//    public String getProvinceName() {
//        return provinceName;
//    }
//
//    /**
//     * @param provinceName the provinceName to set
//     */
//    public void setProvinceName(String provinceName) {
//        this.provinceName = provinceName;
//    }
//
//    /**
//     * @return the provinceType
//     */
//    public String getProvinceType() {
//        return provinceType;
//    }
//
//    /**
//     * @param provinceType the provinceType to set
//     */
//    public void setProvinceType(String provinceType) {
//        this.provinceType = provinceType;
//    }
//
//    /**
//     * @return the districts
//     */
//    public List<District> getDistricts() {
//        return districts;
//    }
//
//    /**
//     * @param districts the districts to set
//     */
//    public void setDistricts(List<District> districts) {
//        this.districts = districts;
//    }
//}
