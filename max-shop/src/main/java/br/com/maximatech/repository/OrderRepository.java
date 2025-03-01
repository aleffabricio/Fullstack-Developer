package br.com.maximatech.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import br.com.maximatech.entity.OrderMain;

public interface OrderRepository extends JpaRepository<OrderMain, Integer> {
	OrderMain findByOrderId(Long orderId);

	Page<OrderMain> findAllByOrderStatusOrderByCreateTimeDesc(Integer orderStatus, Pageable pageable);

	Page<OrderMain> findAllByBuyerEmailOrderByOrderStatusAscCreateTimeDesc(String buyerEmail, Pageable pageable);

	Page<OrderMain> findAllByOrderByOrderStatusAscCreateTimeDesc(Pageable pageable);

	Page<OrderMain> findAllByBuyerPhoneOrderByOrderStatusAscCreateTimeDesc(String buyerPhone, Pageable pageable);
}
