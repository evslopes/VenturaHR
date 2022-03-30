package br.edu.infnet.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;


@EnableFeignClients
@SpringBootApplication
public class VenturaHrWebApplication {

    public static void main(String[] args) {
        SpringApplication.run(VenturaHrWebApplication.class, args);
    }

}
