package com.itheima.security.distributed.order.model;
import lombok.Data;

import java.io.Serializable;
/**
 * 用户信息
 */
//前端页面展示的数据模型
@Data
public class UserDTO implements Serializable {
    /**
     * 用户id
     */
    private String id;
    /**
     * 用户名
     */
    private String username;
    /**
     * 手机号
     */
    private String mobile;

    /**
     * 姓名
     */
    private String fullname;
}
