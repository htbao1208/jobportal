/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.pojos;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author kid03
 */
@Entity
@Table(name = "bai_tuyen_dung")
public class JobPost implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "mo_ta_cong_viec")
    private String description;
    @Column(name = "ngay_tao")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date createdDate;
    
    

    @ManyToOne
    @JoinColumn(name = "id_tai_khoan", referencedColumnName = "id_tai_khoan")
    private User user;
    @ManyToOne
    @JoinColumn(name = "id_loai_cong_viec")
    private JobType jobType;

    
    @Column(name = "ten_bai_dang")
    private String namePost;
    
    @Column(name = "ten_cong_ty")
    private String compName;
    
    private String website;
    
    @ManyToOne
    @JoinColumn(name = "id_nganh_nghe")
    private Career career;
    
    
    private BigDecimal luong;
    @Column(name = "trinh_do_hoc_van")
    private String level;
    @Column(name = "kinh_nghiem")
    private String exp;
    
    

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the createdDate
     */
    public Date getCreatedDate() {
        return createdDate;
    }

    /**
     * @param createdDate the createdDate to set
     */
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    /**
     * @return the company
     */
//    public Company getCompany() {
//        return company;
//    }
//
//    /**
//     * @param company the company to set
//     */
//    public void setCompany(Company company) {
//        this.company = company;
//    }

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * @return the jobType
     */
    public JobType getJobType() {
        return jobType;
    }

    /**
     * @param jobType the jobType to set
     */
    public void setJobType(JobType jobType) {
        this.jobType = jobType;
    }

    /**
     * @return the namePost
     */
    public String getNamePost() {
        return namePost;
    }

    /**
     * @param namePost the namePost to set
     */
    public void setNamePost(String namePost) {
        this.namePost = namePost;
    }

    /**
     * @return the compName
     */
    public String getCompName() {
        return compName;
    }

    /**
     * @param compName the compName to set
     */
    public void setCompName(String compName) {
        this.compName = compName;
    }

    /**
     * @return the website
     */
    public String getWebsite() {
        return website;
    }

    /**
     * @param website the website to set
     */
    public void setWebsite(String website) {
        this.website = website;
    }

    /**
     * @return the career
     */
    public Career getCareer() {
        return career;
    }

    /**
     * @param career the career to set
     */
    public void setCareer(Career career) {
        this.career = career;
    }

    /**
     * @return the luong
     */
    public BigDecimal getLuong() {
        return luong;
    }

    /**
     * @param luong the luong to set
     */
    public void setLuong(BigDecimal luong) {
        this.luong = luong;
    }

    /**
     * @return the level
     */
    public String getLevel() {
        return level;
    }

    /**
     * @param level the level to set
     */
    public void setLevel(String level) {
        this.level = level;
    }

    /**
     * @return the exp
     */
    public String getExp() {
        return exp;
    }

    /**
     * @param exp the exp to set
     */
    public void setExp(String exp) {
        this.exp = exp;
    }

    /**
     * @return the jobLocation
//     */
//    public JobLocation getJobLocation() {
//        return jobLocation;
//    }
//
//    /**
//     * @param jobLocation the jobLocation to set
//     */
//    public void setJobLocation(JobLocation jobLocation) {
//        this.jobLocation = jobLocation;
//    }
    
}
