/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.repository;

import com.tbn.pojos.JobPost;
import java.util.List;

/**
 *
 * @author kid03
 */
public interface JobPostRepository {
    boolean addJobPostOrUpdate (JobPost jobPost) ;
    List<JobPost> getJobPosts(String kw, int page);
    JobPost getJobPostById (int jId);
    long countPost();
}
