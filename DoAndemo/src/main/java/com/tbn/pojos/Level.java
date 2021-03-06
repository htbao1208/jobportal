/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.pojos;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


import javax.persistence.Table;

/**
 *
 * @author ADMINIS
 */
@Entity
@Table(name = "trinh_do_hoc_van")
public class Level implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id ;
    @Column(name = "ten_trinh_do")
    private String tenTrinhDo;
    
    @OneToMany(mappedBy = "level")
    private Set<LevelDetail> levelDetails;
    
    
    
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
     * @return the tenTrinhDo
     */
    public String getTenTrinhDo() {
        return tenTrinhDo;
    }

    /**
     * @param tenTrinhDo the tenTrinhDo to set
     */
    public void setTenTrinhDo(String tenTrinhDo) {
        this.tenTrinhDo = tenTrinhDo;
    }

    /**
     * @return the infors
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

