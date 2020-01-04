package com.bd10.bootfirst;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.bd10.bootfirst.dao")
public class BootFirstApplication {

    public static void main(String[] args) {
        SpringApplication.run(BootFirstApplication.class, args);
    }

}
