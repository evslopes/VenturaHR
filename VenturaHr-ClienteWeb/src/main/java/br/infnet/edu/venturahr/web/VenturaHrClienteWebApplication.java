package br.infnet.edu.venturahr.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;


@EnableFeignClients
@SpringBootApplication
public class VenturaHrClienteWebApplication {

    public static void main(String[] args) {
        SpringApplication.run(VenturaHrClienteWebApplication.class, args);
    }

}
