package com.bdc.dao.impl;

import org.springframework.stereotype.Repository;

import com.bdc.dao.WrodDao;
import com.bdc.model.Wrod;

@Repository
public class WrodDaoImpl extends GenericDaoImpl<Wrod, Integer> implements WrodDao {
}