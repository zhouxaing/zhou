package com.zx.service;

import java.util.List;
import java.util.Map;

import com.zx.dto.Stu;

public interface Stuservice {

	List<Map<String, Object>> list(String mohu);

	List<Map<String, Object>> getupdate(int id);

	int update(Stu stu);

}
