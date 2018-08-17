package com.zx.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zx.dto.Stu;

public interface StuMapper {

	List<Map<String, Object>> list(@Param("mohu")String mohu);

	List<Map<String, Object>> getupdate(int id);

	int update(Stu stu);

}
