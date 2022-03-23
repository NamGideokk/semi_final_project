package io.gitlab.mulcamsemiteam2.pickmeupapiserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

@SpringBootApplication
@PropertySource("classpath:secure.properties")
public class PickmeupApiserverApplication {

	public static void main(String[] args) {
		SpringApplication.run(PickmeupApiserverApplication.class, args);
	}

}
