/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.formatter;

import com.tbn.pojos.JobType;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author kid03
 */
public class JobTypeFormatter implements Formatter<JobType>{

    @Override
    public String print(JobType object, Locale locale) {
        return String.valueOf(object.getId());
    }

    @Override
    public JobType parse(String jobTId, Locale locale) throws ParseException {
        JobType j = new JobType();
        j.setId(Integer.parseInt(jobTId));
        
        return j;
    }
    
}
