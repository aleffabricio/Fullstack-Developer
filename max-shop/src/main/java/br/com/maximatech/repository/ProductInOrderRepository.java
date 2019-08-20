package br.com.maximatech.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.maximatech.entity.ProductInOrder;

public interface ProductInOrderRepository extends JpaRepository<ProductInOrder, Long> {

}
