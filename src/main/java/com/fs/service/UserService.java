package com.fs.service;

import com.fs.entity.User;

import java.util.List;

/**
 * @Author lykgogo
 * @Date 2020/10/21 19:24
 */
public interface UserService {

    void addUser(User user);

    void deleteUser(Long userId);

    void updateUser(User user);

    List<User> findAllUser();
}
