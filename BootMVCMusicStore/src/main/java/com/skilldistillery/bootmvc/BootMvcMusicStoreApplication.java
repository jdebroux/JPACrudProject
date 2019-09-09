package com.skilldistillery.bootmvc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@EntityScan("com.skilldistillery.music.entities")
public class BootMvcMusicStoreApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(BootMvcMusicStoreApplication.class, args);
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	  return application.sources(BootMvcMusicStoreApplication.class);
	}
}
