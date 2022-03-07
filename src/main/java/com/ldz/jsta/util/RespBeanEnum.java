package com.ldz.jsta.util;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

/**
 * @Description:
 * @Author:啵唧啵唧~~
 * @Date:2022/3/4
 */
@ToString
@Getter
@AllArgsConstructor
public enum RespBeanEnum {

    /**
     * 通用
     */
    SUCCESS(200,"SUCCESS"),
    ERROR(500,"服务端异常"),
    /**
     * 登录模块，5002xx
     */
    LOGIN_ERROR(500210,"用户名或密码错误"),
    MOBILE_ERROR(500211,"手机号码格式不正确"),
    SESSION_ERROR(500212,"未登录"),



    /**
     * 注册模块，5007xx
     */
    REGISTER_ERROR(500700,"注册信息有误");



    private final Integer code;
    private final String message;

}
