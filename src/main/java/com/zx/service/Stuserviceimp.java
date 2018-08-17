package com.zx.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.dto.Stu;
import com.zx.mapper.StuMapper;

@Service
public class Stuserviceimp implements Stuservice {
 @Autowired
 private StuMapper mapper;

@Override
public List<Map<String, Object>> list(String mohu) {
	// TODO Auto-generated method stub
	return mapper.list(mohu);
}

@Override
public List<Map<String, Object>> getupdate(int id) {
	// TODO Auto-generated method stub
	return mapper.getupdate(id);
}

@Override
public int update(Stu stu) {
	// TODO Auto-generated method stub
	return mapper.update(stu);
}
}
