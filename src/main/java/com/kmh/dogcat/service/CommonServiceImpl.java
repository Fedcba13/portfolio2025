package com.kmh.dogcat.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmh.dogcat.mapper.CommonMapper;

@Service
public class CommonServiceImpl implements CommonService{
	
	@Autowired
	CommonMapper commonMapper;

	@Override
	public List<HashMap<String, String>> getMenu() {
		return commonMapper.getMenu();
	}
	
}
