package com.fs.controller;

import com.fs.entity.R;
import com.fs.entity.User;
import com.fs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author lykgogo
 * @Date 2020/10/21 19:16
 */

@RestController
@RequestMapping("/user")
public class UserController {


    @Autowired
    private UserService userService;

    @RequestMapping("/test")
    public String test(){
        return "/user/test执行....";
    }

    @RequestMapping("/add")
    public R add(@RequestBody User user){
        userService.addUser(user);
        return R.ok().put("data", "添加用户成功");
    }
}
