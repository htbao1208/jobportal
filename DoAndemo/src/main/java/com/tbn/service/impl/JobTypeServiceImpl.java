/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.service.impl;

import com.tbn.pojos.JobType;

import com.tbn.repository.JobTypeRepository;
import com.tbn.service.JobTypeService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author kid03
 */
@Service
public class JobTypeServiceImpl implements JobTypeService{
    
    @Autowired
    private JobTypeRepository jobTypeRepository;
    
    @Override
    public List<JobType> getJobTypes() {
        return this.jobTypeRepository.getJobTypes();
    }
    
}
