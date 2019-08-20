package br.com.maximatech.service;

import java.util.Collection;

import br.com.maximatech.entity.Cart;
import br.com.maximatech.entity.ProductInOrder;
import br.com.maximatech.entity.User;

public interface CartService {
    Cart getCart(User user);

    void mergeLocalCart(Collection<ProductInOrder> productInOrders, User user);

    void delete(String itemId, User user);

    void checkout(User user);
}
