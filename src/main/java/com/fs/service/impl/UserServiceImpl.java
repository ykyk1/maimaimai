package com.fs.service.impl;

import com.fs.entity.User;
import com.fs.mapper.UserMapper;
import com.fs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author lykgogo
 * @Date 2020/10/21 19:24
 */

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserMapper userMapper;

    public void addUser(User user){
        userMapper.insert(user);

    }

    @Override
    public void deleteUser(Long userId) {
        userMapper.deleteById(userId);
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateById(user);
    }

    @Override
    public List<User> findAllUser() {
        return userMapper.selectList(null);
    }


}
