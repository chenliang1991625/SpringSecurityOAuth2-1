package com.itheima.security.distributed.uaa.model;
import lombok.Data;
import java.io.Serializable;
/**
 * @author Administrator
 * @version 1.0
 **/
@Data
//前端页面展示的数据模型
public class UserDto implements Serializable {
    private String id;
    private String username;
    private String password;
    private String fullname;
    private String mobile;
}
