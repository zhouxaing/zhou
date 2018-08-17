package com.zx.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zx.dto.Stu;
import com.zx.service.Stuservice;

@Controller
public class Stucontroller {
 @Autowired
 private Stuservice stuservice;
 @RequestMapping("list")
 public String list(HttpServletRequest request,String mohu) {
	 mohu=mohu==null?"":mohu;
	 List<Map<String, Object>> list=stuservice.list(mohu);
	 request.setAttribute("list", list);
	return "list";
 }
 @RequestMapping("toupdate")
 public String toupdate() {
	return "update";
 }
 @RequestMapping("getupdate")
 @ResponseBody
 public List<Map<String, Object>> getupdate(int id){
	 List<Map<String, Object>> getupdate=stuservice.getupdate(id);
	return getupdate;
 }
 @RequestMapping("update")
 @ResponseBody
 public Integer update(Stu stu) {
	 int i=stuservice.update(stu);
	return i;
 }
}
