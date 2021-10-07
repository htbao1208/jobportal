/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.pojos;

import java.io.Serializable;
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
@Table(name = "chi_tiet_trinh_do")
public class LevelDetail implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "ten_truong")
    private String schoolName;
    @Column(name = "chuyen_nganh")
    private String nganh;
    @Column(name = "ngay_bat_dau")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date startDay;
    @Column(name = "ngay_ket_thuc")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date endDay;
    @Column(name = "mo_ta")
    private String mota;
    
    @ManyToOne
    @JoinColumn(name = "id_infor")
    private Infor infor;
    @ManyToOne
    @JoinColumn(name = "id_level")
    private Level level;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the schoolName
     */
    public String getSchoolName() {
        return schoolName;
    }

    /**
     * @param schoolName the schoolName to set
     */
    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    /**
     * @return the nganh
     */
    public String getNganh() {
        return nganh;
    }

    /**
     * @param nganh the nganh to set
     */
    public void setNganh(String nganh) {
        this.nganh = nganh;
    }

    /**
     * @return the startDay
     */
    public Date getStartDay() {
        return startDay;
    }

    /**
     * @param startDay the startDay to set
     */
    public void setStartDay(Date startDay) {
        this.startDay = startDay;
    }

    /**
     * @return the endDay
     */
    public Date getEndDay() {
        return endDay;
    }

    /**
     * @param endDay the endDay to set
     */
    public void setEndDay(Date endDay) {
        this.endDay = endDay;
    }

    /**
     * @return the mota
     */
    public String getMota() {
        return mota;
    }

    /**
     * @param mota the mota to set
     */
    public void setMota(String mota) {
        this.mota = mota;
    }

    /**
     * @return the infor
     */
    public Infor getInfor() {
        return infor;
    }

    /**
     * @param infor the infor to set
     */
    public void setInfor(Infor infor) {
        this.infor = infor;
    }

    /**
     * @return the level
     */
    public Level getLevel() {
        return level;
    }

    /**
     * @param level the level to set
     */
    public void setLevel(Level level) {
        this.level = level;
    }
}
