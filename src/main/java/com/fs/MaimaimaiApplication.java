package com.fs;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.fs.mapper")
public class MaimaimaiApplication {
    public static void main(String[] args) {
        SpringApplication.run(MaimaimaiApplication.class, args);
    }
}
