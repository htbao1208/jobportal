/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.repository;

import com.tbn.pojos.User;
import java.util.List;

/**
 *
 * @author ADMINIS
 */
public interface UserRepository {
    boolean addUser(User user);
    List<User> getUsers(String username);
    List<User> getUsersByUserRole(String kw, int page);
    long countUser();
    User getUserById(int id);
}
