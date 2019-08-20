package br.com.maximatech.api;

import java.util.Random;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class FreightController {
	/*
	 * Função que calcula o valor do frete de acordo com a quantidade de itens
	 */

	 @GetMapping("/calculateFreight/{qtdItens}")
	   public Double calculateFreight(@PathVariable("qtdItens")Integer qtdItens) {		
		  
		  	Random random = new Random();
		  	double valueFreight = random.nextInt((10 - 5) + 1) + 5;
		  	
	      return (double)  valueFreight * qtdItens;
	   }
}
