/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.service;

import com.tbn.pojos.JobType;
import java.util.List;

/**
 *
 * @author kid03
 */
public interface JobTypeService {
    List<JobType> getJobTypes();
}
