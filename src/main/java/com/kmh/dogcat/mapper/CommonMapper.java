package com.kmh.dogcat.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CommonMapper {

	public List<HashMap<String, String>> getMenu();
	
}
