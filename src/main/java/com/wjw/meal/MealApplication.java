package com.wjw.meal;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.wjw.meal.Dao")
public class MealApplication {
    public static void main(String[] args) {
        SpringApplication.run(MealApplication.class, args);
    }

}
