package com.bdc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bdc.dao.GenericDao;
import com.bdc.model.Wrod;
import com.bdc.service.WrodService;

@Service
public class WrodServiceImpl extends GenericServiceImpl<Wrod, Integer> implements WrodService {

    @Override
    @Autowired
    @Qualifier("wrodDaoImpl")
    public void setGenericDao(GenericDao<Wrod, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}