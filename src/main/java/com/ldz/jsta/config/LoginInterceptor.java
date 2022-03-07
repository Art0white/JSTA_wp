package com.ldz.jsta.config;

import com.ldz.jsta.entity.Admin;
import com.ldz.jsta.util.CookieUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Description:
 * @Author:啵唧啵唧~~
 * @Date:2022/3/4
 */
@Configuration

public class LoginInterceptor implements HandlerInterceptor {
    @Autowired
    RedisTemplate redisTemplate;
    /**
     * 登录拦截器
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String userTicket = CookieUtil.getCookieValue(request, "userTicket");

        if (userTicket==null){
            return false;
        }
        Admin admin = (Admin)redisTemplate.opsForValue().get("user:"+userTicket);
        if (admin==null){
            return false;
        }

        return true;
    }
}
