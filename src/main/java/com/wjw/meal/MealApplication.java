package com.wjw.meal;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@SpringBootApplication
@MapperScan("com.wjw.meal.Dao")
public class MealApplication {
    public static void main(String[] args) {
        SpringApplication.run(MealApplication.class, args);
    }

    //全局配置跨域
    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurerAdapter() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/system/*").allowedOrigins("http://localhost:8080");
                registry.addMapping("/employee/*").allowedOrigins("http://localhost:8080");
                registry.addMapping("/menu/*").allowedOrigins("http://localhost:8080");
                registry.addMapping("/order/*").allowedOrigins("http://localhost:8080");
                registry.addMapping("/store/*").allowedOrigins("http://localhost:8080");
                registry.addMapping("/user/*").allowedOrigins("http://localhost:8080");
            }
        };
    }
}
