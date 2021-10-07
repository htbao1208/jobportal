/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.service.impl;

import com.tbn.pojos.JobPost;
import com.tbn.repository.JobPostRepository;
import com.tbn.service.JobPostService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author kid03
 */
@Service
public class JobPostServiceimpl implements JobPostService{
    @Autowired
    private JobPostRepository jobPostRepository;
    
    @Override
    public boolean addJobPostOrUpdate(JobPost jobPost) {
        return this.jobPostRepository.addJobPostOrUpdate(jobPost);
    }

    @Override
    public List<JobPost> getJobPosts(String kw, int page) {
        return this.jobPostRepository.getJobPosts(kw, page);
    }

    @Override
    public JobPost getJobPostById(int id) {
        return this.jobPostRepository.getJobPostById(id);
    }

    @Override
    public long countPost() {
        return this.jobPostRepository.countPost();
    }
    
}
