package com.spring_boot.projectEx;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.spring_boot.projectEx"})
@MapperScan(basePackages = {"com.spring_boot.projectEx"})
public class FullstackTeam4Application {

	public static void main(String[] args) {
		SpringApplication.run(FullstackTeam4Application.class, args);
	}

}
