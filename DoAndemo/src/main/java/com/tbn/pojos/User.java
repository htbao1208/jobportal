/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.pojos;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author ADMINIS
 */
@Entity
@Table(name = "tai_khoan_nguoi_dung")
public class User implements Serializable{

    /**
     * @param id_tai_khoan the id_tai_khoan to set
     */
    public void setId_tai_khoan(int id_tai_khoan) {
        this.id_tai_khoan = id_tai_khoan;
    }
//    public static final String ADMIN = "ROLE_ADMIN";
//    public static final String USER = "ROLE_USER";
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_tai_khoan;
    @Column(name = "user_name")
    @Size(min = 6, max = 100, message = "{user.username.lenErr}")
    private String username;
    private String email;
    private String password;
    private char sdt;
    @Column(name = "user_role")
//    @NotNull(message = "{user.userRole.nullErr}")
    private String userRole;
    @Column(name = "anh_nguoi_dung")
    private String userImage;
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<JobPost> jobPosts;
    
    @OneToOne(mappedBy = "user")
    private Infor infor;
    
    
    @Column(name = "ngay_tao")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date createdDate;
    
    private char active;
    
    @Transient
    private String confirmPassword;
    
    @Transient
    private MultipartFile file;
    /**
     * @return the id_tai_khoan
     */
    public int getId_tai_khoan() {
        return id_tai_khoan;
    }


    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the sdt
     */
    public char getSdt() {
        return sdt;
    }

    /**
     * @param sdt the sdt to set
     */
    public void setSdt(char sdt) {
        this.sdt = sdt;
    }

    /**
     * @return the userRole
     */
    public String getUserRole() {
        return userRole;
    }

    /**
     * @param userRole the userRole to set
     */
    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

    /**
     * @return the User
     */
    public String getUserImage() {
        return userImage;
    }

    /**
     * @param userImage the User to set
     */
    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    /**
     * @return the confirmPassword
     */
    public String getConfirmPassword() {
        return confirmPassword;
    }

    /**
     * @param confirmPassword the confirmPassword to set
     */
    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    /**
     * @return the file
     */
    public MultipartFile getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(MultipartFile file) {
        this.file = file;
    }

    /**
     * @return the jobPosts
     */
    public List<JobPost> getJobPosts() {
        return jobPosts;
    }

    /**
     * @param jobPosts the jobPosts to set
     */
    public void setJobPosts(List<JobPost> jobPosts) {
        this.jobPosts = jobPosts;
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
     * @return the active
     */
    public char getActive() {
        return active;
    }

    /**
     * @param active the active to set
     */
    public void setActive(char active) {
        this.active = active;
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
}
