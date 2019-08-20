package br.com.maximatech.service;


import java.util.Collection;

import br.com.maximatech.entity.User;

public interface UserService {
    User findOne(String email);

    Collection<User> findByRole(String role);

    User save(User user);

    User update(User user);
}
