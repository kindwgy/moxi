package com.moxi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@SpringBootApplication
public class MoxiApplication extends WebMvcConfigurerAdapter {

	public static void main(String[] args) {
		SpringApplication.run(MoxiApplication.class, args);
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
	    registry.addResourceHandler("/templates/**").addResourceLocations("classpath:/templates/");
	    registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
	    registry.addResourceHandler("/templates/demo/css/**").addResourceLocations("classpath:/static/css/");
	    registry.addResourceHandler("/templates/demo/img/**").addResourceLocations("classpath:/static/img/");
	    registry.addResourceHandler("/templates/demo/js/**").addResourceLocations("classpath:/static/js/");
	    registry.addResourceHandler("/templates/demo/font-awesome/**").addResourceLocations("classpath:/static/font-awesome/");
	    
	}
}

