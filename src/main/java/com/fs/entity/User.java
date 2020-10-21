package com.fs.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @Author lykgogo
 * @Date 2020/10/21 19:22
 */

@Data
@TableName("user")
public class User {


    @TableId(value = "id",type = IdType.AUTO)
    private Long userId;
    private String username;
    private String password;
    private String phoneNumber;
    private String email;
    private String salt;
    private String url;
    private Integer status;

}
