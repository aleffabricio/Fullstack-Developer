package br.com.maximatech.service;

import br.com.maximatech.entity.ProductInOrder;
import br.com.maximatech.entity.User;


public interface ProductInOrderService {
    void update(String itemId, Integer quantity, User user);
    ProductInOrder findOne(String itemId, User user);
}
