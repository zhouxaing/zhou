package com.zx;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.zx.mapper")
public class Day0802Application {

	public static void main(String[] args) {
		SpringApplication.run(Day0802Application.class, args);
	}
}
