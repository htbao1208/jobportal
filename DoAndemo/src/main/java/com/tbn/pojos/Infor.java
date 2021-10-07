/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.pojos;



import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author ADMINIS
 */
@Entity
@Table(name = "thong_tin_ung_vien")
public class Infor implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String ho;
    private String ten;
    @Column(name = "dia_chi")
    private String diachi;
    @Column(name = "gioi_tinh")
    private String gioitinh;
    @Column(name = "ngay_sinh")
    private Date ngaysinh;
    @Column(name = "mo_ta_kinh_nghiem")
    private String mota;
    @Column(name = "mo_ta_ky_nang")
    private String kinang;
    
    @OneToMany(mappedBy = "infor")
    private Set<LevelDetail> levelDetails;
    
    @OneToOne
    @JoinColumn(name = "id_tai_khoan")
    private User user;
        

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
     * @return the ho
     */
    public String getHo() {
        return ho;
    }

    /**
     * @param ho the ho to set
     */
    public void setHo(String ho) {
        this.ho = ho;
    }

    /**
     * @return the ten
     */
    public String getTen() {
        return ten;
    }

    /**
     * @param ten the ten to set
     */
    public void setTen(String ten) {
        this.ten = ten;
    }

    /**
     * @return the diachi
     */
    public String getDiachi() {
        return diachi;
    }

    /**
     * @param diachi the diachi to set
     */
    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    /**
     * @return the gioitinh
     */
    public String getGioitinh() {
        return gioitinh;
    }

    /**
     * @param gioitinh the gioitinh to set
     */
    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    /**
     * @return the ngaysinh
     */
    public Date getNgaysinh() {
        return ngaysinh;
    }

    /**
     * @param ngaysinh the ngaysinh to set
     */
    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    /**
     * @return the level
     */


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
     * @return the kinang
     */
    public String getKinang() {
        return kinang;
    }

    /**
     * @param kinang the kinang to set
     */
    public void setKinang(String kinang) {
        this.kinang = kinang;
    }

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
     * @return the levels
     */


    /**
     * @return the levelDetails
     */
    public Set<LevelDetail> getLevelDetails() {
        return levelDetails;
    }

    /**
     * @param levelDetails the levelDetails to set
     */
    public void setLevelDetails(Set<LevelDetail> levelDetails) {
        this.levelDetails = levelDetails;
    }
 

}
