package br.com.maximatech.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.maximatech.entity.Cart;


public interface CartRepository extends JpaRepository<Cart, Integer> {
}
