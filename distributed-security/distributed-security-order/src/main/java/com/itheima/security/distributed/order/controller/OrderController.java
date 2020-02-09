package com.itheima.security.distributed.order.controller;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
/**
 * @author Administrator
 * @version 1.0
 **/
@CrossOrigin//允许跨域访问
@RestController("/user")
public class OrderController {
    @GetMapping(value = "/r1")
    @PreAuthorize("hasAuthority('p1')")//单个权限:拥有p1权限方可访问此url
//    @PreAuthorize("hasAnyAuthority('p1','p2')")//多个权限
    public String r1() {
        //获取用户身份信息
       /* UserDTO userDTO = (UserDTO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return userDTO.getFullname() + "访问资源1";*/
       return "访问资源1";
    }
    @PreAuthorize("hasAuthority('p3')")
    @GetMapping(value = "/r2")
    public String r2() {//通过Spring Security API获取当前登录用户
        /*UserDTO user = (UserDTO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return user.getUsername() + "访问资源2";*/
        return "访问资源2";
    }
}